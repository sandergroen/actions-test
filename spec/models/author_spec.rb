require 'rails_helper'

RSpec.describe Author, type: :model do
  # Test voor de associatie
  it { should have_many(:posts) }

  # Test voor de validaties
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }

  it do
    should allow_value('test@example.com').for(:email)
  end

  it do
    should_not allow_value('invalid_email').for(:email)
  end

  # Optionele test voor een valide Factory (indien je FactoryBot gebruikt)
  it "has a valid factory" do
    expect(FactoryBot.build_stubbed(:author_with_posts)).to be_valid
  end
end
