class Section < ApplicationRecord
  belongs_to :course
  #has_many :sections
  has_many :lessons
  
  
  validates :title, presence: true
end
