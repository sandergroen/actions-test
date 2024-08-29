class Author < ApplicationRecord
  has_many :posts
  validates :name, :email, presence: true
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
end
