Feature: Subscribe to email/sms
  Background:
    Given open the site

  Scenario Outline: Subscribe to email/sms
    Then close the newsletter pop-up
    And click on sign up now button from footer
    When user fill the email address filed on the pop-up
    And click on Submit button from the email pop-up
    When user verify the validation message for privacy policy on the pop-up
    Then check the checkbox Privacy policy on subscription email pop-up
    #Then check the sms checkbox on email pop-up
    #And click on Submit button from the email pop-up
    #Then user verifies the validation message for mobile phone number
    When user fills mobile number on email pop-up with <mobile>
    #Then user press on language drop-down on email pop-up and selects <language>
    When user press on link <tou>
    Then  tou pop-up should be opened
    Then close the  pop-up
    And click on sign up now button from footer
    When user fill the email address filed on the pop-up
    When user press on link <pp>
    Then  pp pop-up should be opened
    Then close the  pop-up
    And click on sign up now button from footer
    When user fill the email address filed on the pop-up
    Then check the checkbox Privacy policy on subscription email pop-up
    #Then user should see validation <error> for phone field
    When user fills mobile number on email pop-up with <mobile1>
    And click on Submit button from the email pop-up
    Then user verify the thank you pop-up after email subscription
    And close the newsletter pop-up
   # And site should be switched to <language> local

    Examples:
    |mobile    |language|error                                    |mobile1   |tou         |pp            |
    |6583745896|English |Please enter valid 10 digit Mobile Number|0583745896|Terms of Use|PRIVACY POLICY|