class Topic < ApplicationRecord
  has_many :votes, dependent: :destroy

  scope :order_by_votes_count, -> { order('votes_count desc') }
end
