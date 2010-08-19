class Thing < ActiveRecord::Base

# include as:  has_many :covers, :source=>:things, :as=>:thingable
# in sti child must be: has_attached_file :data

  belongs_to :thingable, :polymorphic=>true
end
