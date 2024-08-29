FactoryBot.define do
  factory :post do
    sequence(:title) { |n| "Blog post #{n}" }
    association :author
  end
end