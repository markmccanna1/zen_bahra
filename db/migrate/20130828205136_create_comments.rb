class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, null: false 
      t.belongs_to :user
      t.belongs_to :commentable, polymorphic: true
      t.timestamps
    end
  end
end
