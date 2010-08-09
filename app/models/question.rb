class Question < ActiveRecord::Base
 has_many :answers

 named_scope :lasts, lambda{|n| {:order=>'created_at desc', :limit=>n} }
 named_scope :by_random, {:order=>'random()'}
 named_scope :not_in, lambda{|a| a.blank? ? {} : {:conditions=>"id not in ( #{a.map(&:to_s).join(',')} )"} }
end
