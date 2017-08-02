class Book < ApplicationRecord
  belongs_to :user, required: true

  validates :title, presence: true
end
