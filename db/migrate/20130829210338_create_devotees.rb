class CreateDevotees < ActiveRecord::Migration
  def change
    create_table :devotees do |t|
      t.integer :user_id
      t.integer :tag_id
      t.timestamps
    end
  end
end
