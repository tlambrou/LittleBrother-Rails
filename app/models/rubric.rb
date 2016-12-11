class Rubric < ApplicationRecord
  has_many :categories

  validates :topic, presence: true
end
