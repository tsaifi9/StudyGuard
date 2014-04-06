class VotesController < ApplicationController
  def create
    @answer = Answer.find params[:answer_id]

    unless Vote.find_by(user: current_user, answer: @answer).present?
      @answer.votes.create vote_params
    end
  end

  private
  def vote_params
    params.require(:vote).permit(:value)
  end
end
