class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :choice_answers
  has_many :choice_votes
  has_many :text_answers
  has_many :text_votes
  has_and_belongs_to_many :groups
end
