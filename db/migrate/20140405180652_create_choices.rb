class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :text
      t.references :choice_question, index: true

      t.timestamps
    end
  end
end
