FactoryBot.define do
  factory :message do
    text {Faker::Types.rb_string}
  end
end
