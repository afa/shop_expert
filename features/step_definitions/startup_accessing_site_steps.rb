Given /^I am anonymous user$/ do
 @user = nil
end

When /^I am accessing index page$/ do
 sign_in :user, @user if @user
 get '/'
end

Then /^I can view login link$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I can view quest selection$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I can view sections navigation$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I am accessing any admin page$/ do
 sign_in :user, @user if @user
 get '/admin'
end

Then /^I must be redirected to logging page$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I am logged in user$/ do
  @user = Factory(:user)
end

Given /^I am has no admin role$/ do
  pending # express the regexp above with the code you wish you had
end

