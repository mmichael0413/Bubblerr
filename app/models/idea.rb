class Idea < ActiveRecord::Base
  validates :title, :presence => true, :length => { :minimum => 2 }
  
  belongs_to :user
  
  has_many :bubbles
end
