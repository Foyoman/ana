class Comment < ApplicationRecord
    belongs_to :anecdote
    validates :content, presence: true
end
