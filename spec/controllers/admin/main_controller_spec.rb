require 'spec_helper'

describe Admin::MainController do
 describe "at index" do
  before do
   6.times{ Factory(:question) }
   6.times{ Factory(:body) }
   6.times{ Factory(:product) }
   get :index
  end
  it "should assigns last questions to questions" do
   assigns['questions'].should be_kind_of(Array)
   assigns['questions'].size.should == 5
   assigns['questions'].should be_include(Question.last(:order=>'created_at'))
  end
  it "should assigns last bodies to bodies" do
   assigns['bodies'].should be_kind_of(Array)
   assigns['bodies'].size.should == 5
   assigns['bodies'].should be_include(Body.last(:order=>'created_at'))
  end
  it "should assigns last products to products" do
   assigns['products'].should be_kind_of(Array)
   assigns['products'].size.should == 5
   assigns['products'].should be_include(Product.last(:order=>'created_at'))
  end
  it "should render index template" do
   response.should be_success
   response.should render_template('admin/main/index')
  end
 end
 
end
