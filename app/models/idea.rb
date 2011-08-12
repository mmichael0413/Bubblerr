class Idea < ActiveRecord::Base
  validates :title, :presence => true, :length => { :minimum => 2 }
  
  belongs_to :user
  
  has_many :bubbles, :dependent => :destroy
  has_many :pops, :dependent => :destroy

  def before_create
    self.bubbles_count = 0
    self.pops_count = 0
  end
  
end
