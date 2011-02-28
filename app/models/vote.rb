class Vote < ActiveRecord::Base

  belongs_to :recipe, :dependent => :destroy
  
end
