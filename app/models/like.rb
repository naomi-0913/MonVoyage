class Like < ApplicationRecord
  belongs_to :memory, counter_cache: :likes_count
  belongs_to :user
  validates_uniqueness_of :post_id, scope: :user_id
end
