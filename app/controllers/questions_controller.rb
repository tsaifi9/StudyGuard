class QuestionsController < ApplicationController
  def show
  end

  def create
    @document = Document.find params[:document_id]

    @document.questions.create question_params

    redirect_to group_document_path(@document.group, @document)
  end

  private
  def question_params
    params.require(:question).permit(:text)
  end
end
