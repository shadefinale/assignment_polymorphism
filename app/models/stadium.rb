class Stadium < ActiveRecord::Base
  has_many :bands, :as => :location, :dependent => :destroy

end
