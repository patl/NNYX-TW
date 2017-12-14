Feature: Check Log in functionality via social
  Background:
    Given open the site
    Then close the newsletter pop-up
    When User click on Signin Register link from header
    Then User is redirected to My account sign in  page

  Scenario Outline: Log in from My acc popup
          Then he press on Connection button
          And Verify validation message for login field
          When he fills login field with <userlogin>
          When he fills password field with <userpassword>
          Then he press on Connection button
          Then verify that user is logged in and welcome <firstname> is displayed in header
          And press on Logout

            Examples:
            |userlogin        |userpassword|firstname|
            |ogboiko@gmail.com|asdasdasd   |Oleksiy  |

    Scenario: Check reset password
          Then he press on forgot your password link
          When Reset password popup is displayed
          Then he fill field with email
          And press on submit button
          Then user should see password reset confirmation message
          And press on close button

    Scenario Outline: check log in functionality for FB social.
        When user press on FB icon
        Then he fills on FB page email <fbemail>
        Then he fills on FB page pssword <fbpassword>
        Then he press on Log In button from FB page
        Then verify that user is logged in and welcome <firstname> is displayed in header


           Examples:
          |fbemail          |fbpassword |firstname|
          |ogboiko@gmail.com|ogboiko!123|Oleksii  |
