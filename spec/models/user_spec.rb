require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '保存できる場合' do
      it 'すべての値を正しく入力した場合、保存できること' do
        expect(@user).to be_valid
      end
    end

    context '保存できない場合' do
      it 'ニックネームが必須であること' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'ニックネームが一意性であること' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.nickname = @user.nickname
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Nickname has already been taken")
      end
      it "メールアドレスが必須であること" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("")
      end
    end

  end
end