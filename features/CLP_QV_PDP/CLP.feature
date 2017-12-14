Feature: Check CLP functionality
  Background:
    Given open the site
    Then close the newsletter pop-up

  Scenario: Mouse Over State
    When User do mouseover  on any category
    Then he should see subcategories
    Then press on any l2 category
    When l2 category is displayed
    And verify elements on l2
    Then check olapic is present
    And hove on olapic image and verify that product is displayed
    And press on Logo


      Scenario: CLP Sorting rules
        When User press on l1 link from menu
        When L1 page is displayed
        Then check that Sort by drop-down is present
        And Change “Sort by” to “Price High to Low”
        Then Check that products are sorted correctly on the grid



