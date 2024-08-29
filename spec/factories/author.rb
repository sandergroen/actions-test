FactoryBot.define do
  factory :author do
    name { "John Doe" }
    email { "john.doe@example.com" }

    # Optioneel: als je wilt dat een auteur standaard met posts wordt aangemaakt
    factory :author_with_posts do
      transient do
        posts_count { 5 }
      end

      after(:create) do |author, evaluator|
        build_list(:post, evaluator.posts_count, author: author)
      end
    end
  end
end