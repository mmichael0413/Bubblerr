class Pop < ActiveRecord::Base
  belongs_to :idea, :counter_cache => true
end
