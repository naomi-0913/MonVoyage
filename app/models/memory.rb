class Memory < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :likes, dependent: :destroy
  def likes_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
