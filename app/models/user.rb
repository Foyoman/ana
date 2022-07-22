class User < ApplicationRecord
    has_secure_password
    validates :username, :uniqueness => true, :presence => true
    has_many :anas
    has_many :anecdotes
    has_many :tags
end