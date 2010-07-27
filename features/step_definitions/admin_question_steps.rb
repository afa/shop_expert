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

Given /^question in db$/ do
 @question = Factory(:question)
 5.times{ @question.answers << Factory.build(:answer) }
 @question.save
end

When /^I am get question show path$/ do
 visit admin_question_path(@question)
end

Then /^I can view name of question$/ do
 assigns['question'].should == @question
 response.should contain @question.name
end

Then /^I can view link to edit question$/ do
 response.should have_selector('a', :href=>edit_admin_question_path(@question))
end

Then /^I can view link to destroy question$/ do
 response.should have_selector('a', :href=>admin_question_path(@question), :content=>'Delete')
end

Then /^I can view list of answers for this question$/ do
 @question.answers.each{|a| response.should contain( a.name)}
end

Then /^I can view link to index page$/ do
 response.should have_selector('a', :href=>admin_question_index_path, :content=>'Index')
end

Given /^I am getting questions\/new$/ do
 visit new_admin_question_path
end

When /^I fill name field$/ do
  pending # express the regexp above with the code you wish you had
end

When /^click submit button$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^new record added to Question$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^record name eq filled$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I am redirected to single question view$/ do
  pending # express the regexp above with the code you wish you had
end

