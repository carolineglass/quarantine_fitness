class Exercise < ApplicationRecord
    has_many :splits
    has_many :routines, through: :splits
end
