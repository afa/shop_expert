Given /^few products$/ do
 5.times do 
  p = Factory(:product)
  2.times{ File.open(File.join Rails.root, 'public', 'images', 'rails.png'){ |f| p.pictures << Factory.build(:picture, :data=>f) } }
 end
end

When /^I am visiting products index page in admin$/ do
 visit admin_product_index_path
 response.should be_success
end

Then /^I can view products names and descriptions$/ do
 Product.all.each{|p| response.should contain(p.name) }
 Product.all.each{|p| response.should contain(p.description) }
end

Then /^I can view covers of products$/ do
# Product.all.each{|p| response.should have_selector('img') do |a|
#  a.any?{|x| x.attributes[:src] =~ /#{p.cover.data.url}/}.should be_true
# end }
end

Then /^I can view count of product pictures$/ do
 Product.all.each do |p|
  response.should have_selector('tr') do |r1|
   r1.should have_selector('td', :content=>p.name)
   r1.should have_selector('td', :content=>p.pictures.count.to_s)
  end
 end
end

Given /^product$/ do
  @product = Factory(:product)
  2.times{ File.open(File.join Rails.root, 'public', 'images', 'rails.png'){ |f| @product.pictures << Factory.build(:picture, :data=>f) } }
end

When /^I am visit product show page in admin$/ do
 visit admin_product_path(@product)
 response.should be_success
end

Then /^I can view product name and description$/ do
 response.should contain(@product.name)
 response.should contain(@product.description)
end

Then /^I can view all product pictures$/ do
 response.should have_selector('img', :count=>@product.pictures.count)
end

When /^I am visit product edit page in admin$/ do
 @product = Factory(:product)
 visit edit_admin_product_path(@product)
 response.should be_success
end

When /^can view product name field$/ do
 response.should have_selector('input', :type=>'text', :value=>@product.name)
end

When /^can view product description field$/ do
 response.should have_selector('textarea', :content=>@product.description)
end

Then /^I can view product pictures selection control$/ do
 response.should have_selector('input', :type=>'file')
end

Then /^I can view product answer selection control$/ do
  pending # express the regexp above with the code you wish you had
end

