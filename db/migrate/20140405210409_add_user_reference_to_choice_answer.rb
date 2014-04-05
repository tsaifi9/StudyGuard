class AddUserReferenceToChoiceAnswer < ActiveRecord::Migration
  def change
    add_reference :choice_answers, :user, index: true
  end
end
