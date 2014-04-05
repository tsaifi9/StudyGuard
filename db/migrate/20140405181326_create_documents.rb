class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.references :group, index: true
      t.references :owner, index: true

      t.timestamps
    end
  end
end
