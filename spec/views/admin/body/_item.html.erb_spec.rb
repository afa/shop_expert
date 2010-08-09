require 'spec_helper'

describe "admin body _item" do
 before do
  @item = Factory(:body)
  render 'admin/body/_item.html.erb', :locals=>{:item=>@item}
 end
 it "should render " do
  response.should contain(/#{@item.name}/)
 end
end
