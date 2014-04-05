class ChoiceAnswer < ActiveRecord::Base
  belongs_to :choice
  belongs_to :choice_question
end
