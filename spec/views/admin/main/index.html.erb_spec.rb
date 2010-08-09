require 'spec_helper'

describe "/admin/main/index" do
  before(:each) do
   6.times{ Factory(:question) }
   assigns['questions'] = Question.lasts(5).all
   6.times{ Factory(:body) }
   assigns['body'] = Body.lasts(5).all
  end

  it "should render partial question _item" do
   template.should_receive(:render).with(:partial=>'admin/question/item', :collection=>assigns['questions']).and_return 'rendered questions'
   render 'admin/main/index'
   response.should contain('rendered questions')
  end

  it "should render partial body _item" do
   template.should_receive(:render).with(:partial=>'admin/body/item', :collection=>assigns['bodies']).and_return 'rendered bodies'
   render 'admin/main/index'
   response.should contain('rendered bodies')
  end
end
