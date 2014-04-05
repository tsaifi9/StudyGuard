class CreateTextVotes < ActiveRecord::Migration
  def change
    create_table :text_votes do |t|
      t.references :text_answer, index: true
      t.references :user, index: true
      t.integer :value

      t.timestamps
    end
  end
end
