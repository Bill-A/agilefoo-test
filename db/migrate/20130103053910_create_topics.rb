class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.text :text
      t.integer :user_id

      t.timestamps
    end
  end
end
