class Article < ApplicationRecord
  has_many :comments
  validates :quote, presence: true, length: {minimum: 2, maximum: 500}
end
