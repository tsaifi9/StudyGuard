class AddDocumentToChoiceQuestion < ActiveRecord::Migration
  def change
    add_reference :choice_questions, :document, index: true
  end
end
