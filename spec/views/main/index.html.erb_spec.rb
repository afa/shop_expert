require 'spec_helper'
describe "/main/index" do
 before(:each) do
  render 'main/index'
 end

end
describe "/main/_header" do
 before do
  render 'main/_header'
 end
 describe "unlogged" do
  it "should view login link" do
   response.should have_tag('a', /Login/)
  end
 end
end
 
