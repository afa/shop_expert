require 'spec_helper'

describe Admin::MainController do
 describe "anonymous user" do
  it "should be redirected to login page" do
   pending #until need users
   get 'index'
   response.should redirect_to(admin_login_path)
  end
 end
 describe "logged in user" do
  describe "without admin role" do
   it "should be redirected to login page" do
   pending #until need users
    @user = Factory(:user)
    p @user
    #sign_in :user, @user
    get 'index'
   end
  end
 end
 
end
