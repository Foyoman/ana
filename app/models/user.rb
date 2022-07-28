class User < ApplicationRecord
    has_secure_password
    validates :username, :uniqueness => true, :presence => true, format: { with: /\A[a-zA-Z0-9-_]+\Z/ }

    acts_as_voter

    has_many :anas
    has_many :anecdotes
    has_many :tags
    has_many :comments

    belongs_to :theme, :optional => true
end