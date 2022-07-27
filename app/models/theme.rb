class Theme < ApplicationRecord
    has_many :users
    # has_many :anecdotes, :through => :users
end
