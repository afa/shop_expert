require 'spec_helper'

describe MainController do
 describe "get index" do 
  before(:each) do
   get 'index'
  end
  it 'should be success' do
   response.should be_success
  end
 end
 describe "quest" do
  before do
   2.times do 
    q = Factory(:question)
    5.times{ q.answers << Factory.build(:answer) }
   end
  end
  it "should assign question to selected" do
   get "index"
   assigns['question'].should_not be_nil
  end
  it "should return nil if no unanswered questions" do
   session['answers'] = Question.all.map{|q| q.answers.first.id }
   get "index"
   assigns["question"].should be_nil
  end
  it "should select unanswered question" do
   session['answers'] = [Question.first.answers.first.id]
   get "index"
   assigns["question"].should == Question.last
  end
 end
end
