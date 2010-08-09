Feature: Manage startup_accessing_sites
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: First view to site
   Given I am with prepared questions
   And prepared sections
    When I am accessing index page
    Then I can view quest selection
    And I can view sections navigation

  Scenario: view to admin index
   Given I am with prepared questions
   And prepared bodies
   And prepared products
   When I am getting admin index page
   Then I can view list of last questions
   And I can view list of last bodies
   And I can view list of last products
   And I can view link to questions page
   And I can view link to bodies page
   And I can view link to products page
