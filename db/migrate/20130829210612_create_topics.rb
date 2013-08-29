class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :tag_id
      t.integer :question_id
      t.timestamps
    end
  end
end
