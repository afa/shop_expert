Given /^I am anonymous user$/ do
 #Devise::TestHelpers::sign_out :user
end

When /^I am accessing index page$/ do
 get '/'
end

#Then /^I can view login link$/ do
#  pending # express the regexp above with the code you wish you had
#end

Then /^I can view quest selection$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I can view sections navigation$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I am accessing any admin page$/ do
 get '/admin'
end

#Then /^I must be redirected to logging page$/ do
#  pending # express the regexp above with the code you wish you had
#end

#Given /^I am logged in user$/ do
# @user = Factory(:user)
# #Devise::TestHelpers.sign_in :user, @user
#end

#Given /^I am has no admin role$/ do
#  @user.should_not be_nil
#  @user.should_not be_is_admin
#end

