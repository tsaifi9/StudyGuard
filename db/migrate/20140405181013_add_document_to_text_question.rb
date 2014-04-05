class AddDocumentToTextQuestion < ActiveRecord::Migration
  def change
    add_reference :text_questions, :document, index: true
  end
end
