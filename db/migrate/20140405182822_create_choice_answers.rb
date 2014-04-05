class CreateChoiceAnswers < ActiveRecord::Migration
  def change
    create_table :choice_answers do |t|
      t.references :choice, index: true
      t.references :choice_question, index: true
      t.text :explanation

      t.timestamps
    end
  end
end
