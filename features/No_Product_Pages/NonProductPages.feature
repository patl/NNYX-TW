Feature: No product pages
  Background:
    Given open the site
    Then close the newsletter pop-up

  Scenario: Check the Store locator page
    Then user press on store locator icon from header
    When user checked the search filed
    Then user checked the stores list
    And user checked the map

    Scenario Outline: check the search functionality
      When user press on search icon from heder
      Then user entered searchable word <serchword>
      #When user see search  suggestion list
      And press on search button for search
      When user see the search result page
      And Change “Sort by” to “Price High to Low”
      And Check that products are sorted correctly on the grid

      Examples:
      |serchword|
      |lip     |

  Scenario: check the 404 page
    When user navigates to the wrong link
    Then user should see 404 error page
    And user checks the elements on the 404 page



