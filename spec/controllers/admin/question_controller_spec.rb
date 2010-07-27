require 'spec_helper'

describe Admin::QuestionController do

 it "should assign questions to all questions" do
  Question.should_receive(:all).and_return(['this array' ])
  get :index
  assigns[:questions].should == ['this array' ]

 end

end
