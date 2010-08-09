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
 response.should have_selector('form') do |form|
  form.should have_selector('input', :name=>'question[name]')
 end
 fill_in 'question[name]', :with=>'test create'
end

When /^click submit button$/ do
 @q_count = Question.count
 click_button 'Save changes'
end

Then /^new record added to Question$/ do
 @q_count.should < Question.count
end

Then /^I am redirected to single question view$/ do
 response.should be_success
 current_url.should =~ /\/admin\/question\/\d+$/
end

Given /^existing question record$/ do
 @question = Factory(:question)
end

Given /^I am getting question edit page$/ do
 visit edit_admin_question_path(@question)
end

Given /^edition form with fields filled from record$/ do
 response.should have_selector('form') do |form|
  form.should have_selector('input', :name=>'question[name]', :value=>@question.name)
 end
end

When /^I change name$/ do
 fill_in 'question[name]', :with=>'testing it'
end

When /^submit form$/ do
 click_button 'Save changes'
 response.should be_success
end

Then /^record must be updated from form$/ do
 Question.find(@question.id).name.should == 'testing it'
end

Then /^I am should be redirected to question view$/ do
 current_url.should =~ /\/admin\/question\/#{@question.id}$/
end

Given /^existing question record with answers$/ do
 @question = Factory(:question)
 5.times{ @question.answers << Factory.build(:answer) }
 @question.save
end

Given /^I am getting show page$/ do
 visit admin_question_path(@question)
end

Given /^I can view button add answer$/ do
 response.should have_selector('div', :id=>'question_answers_adder') do |f|
  f.should have_selector('input', :value=>'Add answer', :type=>'button')
 end
end

Given /^I can view answers list$/ do
 @question.answers.each{|a| response.should contain(a.name) }
end

When /^I click button add answer$/ do
 xhr :get, new_admin_question_answer_path(@question)
 response.should have_rjs(:replace_html, 'question_answers_adder')
end

When /^fill answer name$/ do
 #fill_in 'answer[name]', :with=>'testing it'
end

When /^confirm addition$/ do
 xhr :post, admin_question_answer_index_path(@question, 'answer[name]'=>'testing it', 'answer[question_id]'=>@question.id)
 response.should have_rjs(:replace_html, 'question_answers_adder')
 #click_button "Save answer"
end

Then /^answer added  to question$/ do
 @question.answers.find_by_name('testing it').should_not be_nil
end

Then /^answer showed in answers list$/ do
 response.should have_rjs(:replace_html, 'question_answers') do |f|
  f.should contain 'testing it'
 end
end

