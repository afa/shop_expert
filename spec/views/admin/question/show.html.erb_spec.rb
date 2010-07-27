require "spec_helper"

describe "admin/question/show" do
 before do
  @q = Factory(:question)
  5.times{ @q.answers << Factory.build(:answer) }
 end
 it "should ask items partial for render" do
  template.should_receive(:render).with(:partial=>'admin/answer/item', :collection=>@q.answers).and_return('testing request')
  assigns['question'] = @q
  render 'admin/question/show.html.erb'
  response.should contain('testing request')
 end
end
