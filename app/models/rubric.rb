class Rubric < ApplicationRecord
  has_many :categories, dependent: :destroy

  validates :topic, presence: true
end
