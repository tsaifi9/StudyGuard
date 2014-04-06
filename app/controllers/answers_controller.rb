class AnswersController < ApplicationController
  def show
  end

  def new
  end

  def create
    @question = Question.find params[:question_id]

    answer = Answer.create answer_params
    answer.user = current_user

    @question.answers << answer
  end

  private
  def answer_params
    params.require(:answer).permit(:text)
  end
end
