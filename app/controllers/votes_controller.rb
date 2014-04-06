class VotesController < ApplicationController
  def create
    @answer = Answer.find params[:answer_id]

    unless Vote.find_by(user: current_user, answer: @answer).present?
      @answer.votes.create value: params[:value], user: current_user
    end

    redirect_to group_document_question_path(@answer.question.document.group, @answer.question.document, @answer.question)
  end
end
