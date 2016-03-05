class Answer < ActiveRecord::Base
  belongs_to :technology

  has_and_belongs_to_many :questions
end
