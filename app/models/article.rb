class Article < ApplicationRecord
  validates :quote, presence: true, length: {minimum: 2, maximum: 500}
end
