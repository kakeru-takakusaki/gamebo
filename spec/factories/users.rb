FactoryBot.define do
  factory :user do
    nickname {Faker::Name.initials(number: 5)}
    email {Faker::Internet.free_email}
    password {'test1234'}
    password_confirmation {password}
    # 新規登録時には必要ないためコメントアウト
    # profile_text {Faker::String.random(length: 10..100)}
  end
end