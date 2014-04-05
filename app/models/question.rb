class Question < ActiveRecord::Base
  belongs_to :document
  has_many :answers
end
