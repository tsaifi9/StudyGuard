class CreateTextQuestions < ActiveRecord::Migration
  def change
    create_table :text_questions do |t|
      t.string :text

      t.timestamps
    end
  end
end
