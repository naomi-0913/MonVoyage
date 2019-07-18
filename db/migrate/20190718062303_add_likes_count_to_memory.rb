class AddLikesCountToMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :memories, :likes_count, :integer
  end
end
