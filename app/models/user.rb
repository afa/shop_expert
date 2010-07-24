class User < ActiveRecord::Base
 devise :database_authenticatable
#, :confirmable, :recoverable, :rememberable, :trackable, :validatable

 acts_as_authorized_user
 acts_as_authorizable

end
