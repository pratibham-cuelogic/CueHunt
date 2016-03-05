class Question < ActiveRecord::Base
  belongs_to :technology

  has_many :question_answers
  has_many :answers, :through => :question_answers
end
