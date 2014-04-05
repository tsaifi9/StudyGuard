class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :answer, index: true
      t.references :user, index: true
      t.integer :value

      t.timestamps
    end
  end
end
