class Rubric < ApplicationRecord
  has_many :criteria

  validates :topic, presence: true
end
