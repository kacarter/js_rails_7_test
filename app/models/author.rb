class Author < ApplicationRecord
  has_many :books
  accepts_nested_attributes_for :books, reject_if: :all_blank, allow_destroy: true
end
