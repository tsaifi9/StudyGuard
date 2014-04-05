class ChoiceQuestion < ActiveRecord::Base
  has_many :choices
  belongs_to :document
end
