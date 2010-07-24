Feature: Manage startup_accessing_sites
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: First view to site
    Given I am anonymous user
    When I am accessing index page
    Then I can view login link
    And I can view quest selection
    And I can view sections navigation

  Scenario: Anonymous access to admin
    Given I am anonymous user
    When I am accessing any admin page
    Then I must be redirected to logging page

  Scenario: Logged in user accessing admin
   Given I am logged in user
   And I am has no admin role
   When I am accessing any admin page
   Then I must be redirected to logging page
