class Restaurant < ActiveRecord::Base
  has_many :bands, :as => :location
  
end
