class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :link
  #comments will be rendered in descending order by default.
  default_scope { order(created_at: :desc) }
  #use the below scope if descending order shouldn't be the default order.
  #scope :descending, -> {order(created_at: :desc)}
end
