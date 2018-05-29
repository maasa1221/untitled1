class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :imgname, null: false
      t.string :title, null: false
      t.text :column, null:false
      t.date :day, null:false
      t.timestamps
    end
  end
end
