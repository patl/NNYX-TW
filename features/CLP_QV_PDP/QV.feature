Feature: Check QV functionality
  Background:
    Given open the site
    Then close the newsletter pop-up

  Scenario Outline: Add product to cart from CLP QV
    When User press on l1 link from menu
    When L1 page is displayed
    When user do mousover on first product from grid
    Then press on QV button
    And user should see QV pop-up displayed
    And verify elements on the QV pop-up
    And user verify that Find a store button is displayed
    Examples:
      |qnt|userlogin|userpassword|
      |1|ogboiko@gmail.com|ogboiko123|




