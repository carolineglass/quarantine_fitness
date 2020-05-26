class User < ApplicationRecord
    has_many :routines
    has_many :comments
    has_many :splits, through: :routines
end
