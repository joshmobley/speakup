class Idea < ApplicationRecord
  has_many :votes, dependent: :destroy
  scope :with_votes, -> { includes(:votes) }
end
