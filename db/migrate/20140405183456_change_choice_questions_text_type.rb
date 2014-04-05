class ChangeChoiceQuestionsTextType < ActiveRecord::Migration
  def change
    change_column :choice_questions, :text, :text, limit: nil
  end
end
