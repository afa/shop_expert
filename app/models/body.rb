class Body < ActiveRecord::Base
 has_and_belongs_to_many :answers
 has_and_belongs_to_many :products

 named_scope :lasts, lambda{|n| {:order=>'created_at desc', :limit=>n} }
end
