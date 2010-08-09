require "spec_helper"

describe "admin product _item" do
 before do
  @item = Factory(:product)
  render 'admin/product/_item.html.erb', :locals=>{:item=>@item}
 end
 it "should render product name" do
  response.should contain(/#{@item.name}/)
 end
end

