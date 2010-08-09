require "spec_helper"

describe "question _quest" do
 before do
  @question = Factory(:question)
  5.times{ @question.answers << Factory.build(:answer) }
  render 'question/_quest.html.erb', :locals=>{:question=>@question, :answers=>[]}
 end
 it "should render question given in locals" do
  response.should be_success
  response.should contain(@question.name)
 end
 it "should render links to all question answers activation" do
  @question.answers.each do |a|
   response.should have_selector('a', :content=>a.name)
  end
 end
end
