class TextAnswer < ActiveRecord::Base
  belongs_to :text_question
  has_many :text_votes
  belongs_to :user
end
