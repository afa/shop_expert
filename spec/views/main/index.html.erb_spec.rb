require 'spec_helper'
describe "/main/index" do
 before(:each) do
 end
 it "should render quest_view with question" do
  template.should_receive(:render).with(:partial=>'question/quest', :locals=>{:question=>nil}).and_return 'quest return'
  render 'main/index'
  response.should contain('quest return')
 end
end
describe "/main/_header" do
end
 
