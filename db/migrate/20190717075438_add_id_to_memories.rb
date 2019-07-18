class AddIdToMemories < ActiveRecord::Migration[5.2]
  def change
    add_column :memories, :user_id, :integer
  end
end
