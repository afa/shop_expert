Given /^I am with prepared questions$/ do
 6.times{ Factory(:question) }
end

Given /^prepared sections$/ do
 6.times{ Factory(:section) }
end

Given /^prepared products$/ do
 6.times{ Factory(:product) }
end

When /^I am accessing index page$/ do
 visit index_path
end

Then /^I can view quest selection$/ do
 response.should have_selector('div', :class=>'quest_view')
end

Then /^I can view sections navigation$/ do
 response.should have_selector('div', :class=>'sections_view')
end

Given /^prepared bodies$/ do
 6.times{ Factory(:body) }
end

When /^I am getting admin index page$/ do
 visit admin_index_path
end

Then /^I can view list of last questions$/ do
 response.should contain(Question.last(:order=>'created_at').name)
end

Then /^I can view list of last bodies$/ do
 response.should contain(Body.last(:order=>'created_at').name)
end

Then /^I can view link to questions page$/ do
 response.should have_selector('a', :href=>admin_question_index_path)
end

Then /^I can view link to bodies page$/ do
 response.should have_selector('a', :href=>admin_body_index_path)
end

Then /^I can view list of last products$/ do
 response.should contain(Product.last(:order=>'created_at').name)
end

Then /^I can view link to products page$/ do
 response.should have_selector('a', :href=>admin_product_index_path)
end

