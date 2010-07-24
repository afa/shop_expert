Factory.sequence :user_login do |n|
 "user_#{n}"
end

Factory.define :user do |u|
 u.login { Factory.next(:user_login) }
end
