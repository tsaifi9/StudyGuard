class AddUserReferenceToTextAnswer < ActiveRecord::Migration
  def change
    add_reference :text_answers, :user, index: true
  end
end
