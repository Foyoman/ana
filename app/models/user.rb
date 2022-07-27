class User < ApplicationRecord
    has_secure_password
    validates :username, :uniqueness => true, :presence => true, format: { with: /\A[a-zA-Z0-9-_]+\Z/ }

    has_many :anas
    has_many :anecdotes
    has_many :tags

    belongs_to :theme, :optional => true
end