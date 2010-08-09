class Product < ActiveRecord::Base
 has_and_belongs_to_many :bodies
 has_and_belongs_to_many :sections

 named_scope :lasts, lambda{|n| { :order=>"created_at desc", :limit=>n } }
end
