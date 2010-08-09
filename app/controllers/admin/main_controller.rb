class Admin::MainController < ApplicationController

 before_filter :get_questions, :only=>[:index]
 before_filter :get_bodies, :only=>[:index]
 before_filter :get_products, :only=>[:index]
  def index
  end

 protected
 def get_questions
  @questions = Question.lasts(5).all
 end
 def get_bodies
  @bodies = Body.lasts(5).all
 end
 def get_products
  @products = Product.lasts(5).all
 end
end
