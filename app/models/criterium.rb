class Criterium < ApplicationRecord
  belongs_to :rubric
  has_ancestry

  # has_many :subcriteria, class_name: "Criterium", foreign_key: "critparent_id"
  # belongs_to :critparent, class_name: "Criterium"
  # , :foreign_key => :id, :primary_key => :critparent_id
end
