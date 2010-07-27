Factory.sequence :user_username do |n|
 "user_#{n}"
end

Factory.define :user do |u|
 u.username { Factory.next(:user_username) }
end

#Sham.question {Lorem.phrase}
Factory.sequence :question_name do |n|
 "question_#{n}"
end

Factory.define :question do |q|
 q.name { Factory.next(:question_name) }
# q.name {Sham.question}
end

Factory.sequence :answer_name do |n|
 "answer_#{n}"
end

Factory.define :answer do |a|
 a.name { Factory.next(:answer_name) }
end
