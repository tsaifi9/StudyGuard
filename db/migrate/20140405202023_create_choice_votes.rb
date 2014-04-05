class CreateChoiceVotes < ActiveRecord::Migration
  def change
    create_table :choice_votes do |t|
      t.references :choice_answer, index: true
      t.references :user, index: true
      t.integer :value

      t.timestamps
    end
  end
end
