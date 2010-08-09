Given /^I am$/ do
end

Given /^few prepared questions$/ do
 3.times do
  q = Factory(:question)
  5.times{ Factory(:answer, :question_id=>q.id) }
 end
end

When /^I am view to the quest view$/ do
 visit index_path
end

Then /^I can view question$/ do
 response.should have_selector('div', :class=>'quest_view')
 Question.all.should be_include(assigns['question'])
end

Then /^all linked to question answers$/ do
 response.should have_selector('div', :class=>'quest_view') do |d|
  assigns['question'].answers.each{|a| d.should contain(a.name)}
 end
end

Then /^links to select next step through answer$/ do
 response.should have_selector('div', :class=>'quest_view') do |d|
  assigns['question'].answers.each{|a| d.should have_selector('a', :href=>select_question_answer_path(assigns['question'], a)) }
 end
end

