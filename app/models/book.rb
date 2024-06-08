class Book < ApplicationRecord
  validates :title, uniqueness: true
  validates :description, length: { maximum: 250 }
  belongs_to :author
end
