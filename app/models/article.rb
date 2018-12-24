class Article < ApplicationRecord
  has_many :comments
  validates :quote, presence: true, length: {minimum: 5, maximum: 500}
end
