class CreateVotesTable < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :user
      t.belongs_to :voteable, polymorphic: true
      t.integer :points

      t.timestamps
    end
  end
end
