class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :memory, foreign_key: true
      t.references :user, foreign_key: true
      t.integer   :memory_id
      t.integer    :user_id
      t.timestamps
    end
  end
end
