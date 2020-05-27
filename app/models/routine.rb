class Routine < ApplicationRecord
    belongs_to :user 
    has_many :comments
    has_many :users, through: :comments
    has_many :splits
    has_many :exercises, through: :splits
end
