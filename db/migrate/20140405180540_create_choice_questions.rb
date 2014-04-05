class CreateChoiceQuestions < ActiveRecord::Migration
  def change
    create_table :choice_questions do |t|
      t.string :text

      t.timestamps
    end
  end
end
