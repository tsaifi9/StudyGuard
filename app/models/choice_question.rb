class ChoiceQuestion < ActiveRecord::Base
  has_many :choices
  belongs_to :document
  has_many :choice_answers
end
