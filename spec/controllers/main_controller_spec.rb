require 'spec_helper'

describe MainController do
 describe "when anonymous user" do
  describe "get index" do 
   before(:each) do
    get 'index'
   end
   it 'should be success' do
    response.should be_success
   end
  end
 end
end
