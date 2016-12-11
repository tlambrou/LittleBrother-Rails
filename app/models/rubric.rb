class Rubric < ApplicationRecord
  has_many :criteria, dependent: :destroy

  validates :topic, presence: true
end
