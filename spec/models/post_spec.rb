require 'rails_helper'

RSpec.describe Post, type: :model do
  # Test voor de associatie
  it { should belong_to(:author) }

  # Test voor de validaties
  it { should validate_presence_of(:title) }

  # Optionele test voor een valide Factory (indien je FactoryBot gebruikt)
  it "has a valid factory" do
    expect(build(:post)).to be_valid
  end
end