Feature: Manage startup_accessing_sites
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new startup_accessing_site
    Given I am on the new startup_accessing_site page
    And I press "Create"

  Scenario: Delete startup_accessing_site
    Given the following startup_accessing_sites:
      ||
      ||
      ||
      ||
      ||
    When I delete the 3rd startup_accessing_site
    Then I should see the following startup_accessing_sites:
      ||
      ||
      ||
      ||
