class ChoiceVote < ActiveRecord::Base
  belongs_to :choice_answer
  belongs_to :user
end
