class ChoiceAnswer < ActiveRecord::Base
  belongs_to :choice
  belongs_to :choice_question
  has_many :choice_votes
  belongs_to :user
end
