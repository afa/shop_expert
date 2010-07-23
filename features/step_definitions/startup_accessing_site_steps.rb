Given /^I am anonymous user$/ do
 @user = nil
end

When /^I am accessing index page$/ do
 get '/', (@user ? {:logon => @user} : {} )
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
 get '/admin', (@user ? {:logon => @user} : {})
end

Then /^I must logged in$/ do
  pending # express the regexp above with the code you wish you had
end

