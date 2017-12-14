Feature: Check PDP functionality
  Background:
    Given open the site
    Then close the newsletter pop-up

  Scenario: Add product to cart from CLP PDD
    When User press on l1 link from menu
    When L1 page is displayed
   # Then user selects any refinement
    When user do mousover on first product from grid
    Then press on QV button
    When user press on view products details link
    And user is redirected to PDP
    # Then user changed other available options (size/color, etc)
    And verify elements on the PDP


