Feature: Manage admin_products
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
 Scenario: Index of admin products
  Given few products
  When I am visiting products index page in admin
  Then I can view products names and descriptions
  And I can view covers of products
  And I can view count of product pictures

 Scenario: Show admin product
  Given product
  When I am visit product show page in admin
  Then I can view product name and description
  And I can view all product pictures

 Scenario: edit admin product
  Given product
  When I am visit product edit page in admin
  And can view product name field
  And can view product description field
  Then I can view product pictures selection control
  And I can view product answer selection control
