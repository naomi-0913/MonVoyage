class Like < ApplicationRecord
  belongs_to :memory, counter_cache: :likes_count
  belongs_to :user
end
