class Anecdote < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :anas
    has_and_belongs_to_many :tags
end