class Band < ActiveRecord::Base
  belongs_to :location, :polymorphic => true
  
end
