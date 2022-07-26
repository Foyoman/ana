class Anecdote < ApplicationRecord
    acts_as_votable
    
    belongs_to :user, :optional => true
    has_and_belongs_to_many :anas
    has_and_belongs_to_many :tags

    accepts_nested_attributes_for :tags
end