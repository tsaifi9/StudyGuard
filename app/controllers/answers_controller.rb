class AnswersController < ApplicationController
  def create
    @question = Question.find params[:question_id]

    answer = Answer.create answer_params
    answer.user = current_user

    @question.answers << answer

    redirect_to group_document_question_path(@question.document.group, @question.document, @question)
  end

  private
  def answer_params
    params.require(:answer).permit(:text)
  end
end
