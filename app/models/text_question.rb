class TextQuestion < ActiveRecord::Base
  belongs_to :document
  has_many :text_answers
end
