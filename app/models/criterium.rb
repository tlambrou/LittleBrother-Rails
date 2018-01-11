class Criterium < ApplicationRecord
  belongs_to :category
  has_ancestry
end
