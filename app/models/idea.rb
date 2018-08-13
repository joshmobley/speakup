class Idea < ApplicationRecord

    has_many :votes, dependent: :destroy
end
