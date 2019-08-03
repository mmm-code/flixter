class Section < ApplicationRecord
  belongs_to :course
  has_many :sections
  
  
  validates :title, presence: true
end
