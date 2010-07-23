require 'spec_helper'

describe Admin::MainController do
 describe "anonymous user" do
  it "should be redirected to login page" do
   get 'index'
   response.should redirect_to(admin_login_path)
  end
 end
end
