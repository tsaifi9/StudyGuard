class TextVote < ActiveRecord::Base
  belongs_to :text_answer
  belongs_to :user
end
