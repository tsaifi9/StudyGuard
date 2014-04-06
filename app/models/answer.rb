class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many :votes

  def score
    score = 0
    self.votes.each do |vote|
      score += vote.value
    end
    score
  end
end
