class Animal < ApplicationRecord
  belongs_to :zoo

  validates :age, numericality: { greater_than_or_equal_to: 2, message: "of Animal must be 2 at least, unless born within the Zoo." }
end
