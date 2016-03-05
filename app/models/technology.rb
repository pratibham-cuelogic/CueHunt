class Technology < ActiveRecord::Base
  has_many :questions
  validates_uniqueness_of :name, :case_sensitive => false
end
