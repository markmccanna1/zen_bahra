class AddColumnAnswers < ActiveRecord::Migration
  def up
    add_column :answers, :body, :text
    add_column :answers, :rating, :integer, default: 0
    add_column :answers, :is_chosen, :integer, default: 0
    add_column :answers, :question_id, :integer
    add_column :answers, :user_id, :integer
  end
end
