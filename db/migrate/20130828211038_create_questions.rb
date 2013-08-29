class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.integer :rating, default: 0

      t.timestamps
    end
  end
end
