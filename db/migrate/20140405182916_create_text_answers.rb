class CreateTextAnswers < ActiveRecord::Migration
  def change
    create_table :text_answers do |t|
      t.references :text_question, index: true
      t.text :explanation

      t.timestamps
    end
  end
end
