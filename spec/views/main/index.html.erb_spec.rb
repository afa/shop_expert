require 'spec_helper'
describe "/main/index" do
 before(:each) do
  render 'main/index'
 end

end
describe "/main/_header" do
 before do
  @user = Factory(:user)
 end
 describe "unlogged" do
  it "should view login link" do
   pending
   template.should_receive(:user_signed_in?).and_return(false)
   render 'main/_header'
   response.should have_tag('a', /Login/)
  end
 end
 describe "logged in" do
  it "should view logout link" do
   pending
   template.should_receive(:user_signed_in?).and_return(true)
   render 'main/_header'
   response.should have_tag('a', /Logout/)
  end
 end
end
 
