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

  end
end