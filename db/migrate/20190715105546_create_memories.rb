class CreateMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :memories do |t|
      t.string :country, null: false
      t.string :city
      t.date :date, null: false
      t.string :image
      t.text :content

      t.timestamps
    end
  end
end
