class ChangeChoicesTextType < ActiveRecord::Migration
  def change
    change_column :choices, :text, :text, limit: nil
  end
end
