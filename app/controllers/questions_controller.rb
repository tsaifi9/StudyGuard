class QuestionsController < ApplicationController
  def show
    @group = Group.find params[:group_id]
    @document = Document.find params[:document_id]
    @question = Question.find params[:id]

    @pipeline = HTML::Pipeline.new [HTML::Pipeline::MarkdownFilter]
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
