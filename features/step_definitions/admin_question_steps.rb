Given /^questions list$/ do
 @questions = (1..5).collect{ Factory(:question) }
end

When /^I am getting questions index path$/ do
 visit admin_question_index_path
end

Then /^I can view collection of questions$/ do
 assigns['questions'].should == @questions
end

Then /^questions show names$/ do
 @questions.each{|q| response.should contain q.name }
end

Then /^each question has link to edit page$/ do
 @questions.each{|q| response.should have_selector 'a', :href=>edit_admin_question_path(q) }
end

Then /^each question has link to show page$/ do
 @questions.each{|q| response.should have_selector 'a', :href=>admin_question_path(q) }
end

