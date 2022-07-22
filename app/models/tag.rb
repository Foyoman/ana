class Tag < ApplicationRecord
    has_and_belongs_to_many :anecdotes
    has_and_belongs_to_many :anas
    belongs_to :user, :optional => true
end
