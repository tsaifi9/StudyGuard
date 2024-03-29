class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :answers
  has_many :votes
  has_and_belongs_to_many :groups


  def voted_for(answer)
    self.votes.each do |vote|
      return true if vote.answer == answer
    end

    false
  end

  def has_contributed_to(document)
    document.questions.each do |question|
      question.answers.each do |answer|
        return true if answer.user == self
      end
    end

    false
  end
end
