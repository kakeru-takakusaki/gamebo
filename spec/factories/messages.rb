FactoryBot.define do
  factory :message do
    text {Faker::Types.rb_string}
    association :room
    association :user
  end
end
