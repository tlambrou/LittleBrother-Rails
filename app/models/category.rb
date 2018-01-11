class Category < ApplicationRecord
  belongs_to :rubric
  has_many :criteria, dependent: :destroy
end
