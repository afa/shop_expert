class Admin::ProductController < ApplicationController
 before_filter :get_products, :only=>[:index]
 before_filter :get_product, :only=>[:show, :edit, :update]

  def index
  end

  def show
  end

  def edit
  end
 protected
  def get_products
   @products = Product.all
  end

  def get_product
   @product = Product.find params[:id]
  end
end
