class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.belongs_to :user

      t.timestamps
    end
  end
end
