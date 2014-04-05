class Document < ActiveRecord::Base
  belongs_to :group
  has_one :owner, class_name: 'User', foreign_key: 'owner_id' 	
  has_many :choice_questions
  has_many :text_questions
end


