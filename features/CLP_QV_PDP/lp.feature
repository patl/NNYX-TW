Feature: Check the SLP

  Background:
    Given open the site
    Then close the newsletter pop-up

Scenario: check the lip-lingerie-landing
  When user navigates to lip-lingerie-landin page
  Then he should see the banner
  And should see the lipsticks
  When user do mouseover on the lipsticks
  Then user should see qv button and click on it
  When QV pop-up id displayed
  Then close the qv pop-up
  Then user should see '24' shades section
  When user click on the plus icon he should see qv
  Then close the qv pop-up
  Then user should see NUDES FOR ALL section
  When user click on navigation arrows
  Then user should see ARM SWATCHES section
  When user clicks on navigation arrows
  Then user should see BEAUTY BAR VIDEOS video section

Scenario Outline: check the brow-how-to

  When user navigates to brow-how-to page
  Then user should see header
  Then user should see GET THE LOOK section
  When user clicks on Shop the look tab
  Then user should see product
  When user do mouseover on the prodcut
  Then QV button should be displayed
  When user press on QV button
  Then close the qv pop-up
  Then user should see choose your shade section
  #When user clicks on tabs
  #Then verify that products are displayed
  #When user do mousover on the product
 # Then user should see QV button
 # Then close the qv pop-up
  Then user should see view all brows section with text <viewall>
  Then user should see WHAT'S TRENDING IN BROWS section
  When user do mouseover on the image
  When user should see insta label
  When user clicks on any image
  Then user should see QA opened
  And verify that product is displayed on the QV
  Then close the qv olapic pop-up

Examples:
|viewall|
|view   |



