class ChangeTextQuestionsTextType < ActiveRecord::Migration
  def change
    change_column :text_questions, :text, :text, limit: nil
  end
end
