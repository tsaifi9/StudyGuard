class DropOldTables < ActiveRecord::Migration
  def change
    drop_table :choice_answers
    drop_table :choice_questions
    drop_table :choice_votes
    drop_table :choices
    drop_table :text_answers
    drop_table :text_questions
    drop_table :text_votes
  end
end
