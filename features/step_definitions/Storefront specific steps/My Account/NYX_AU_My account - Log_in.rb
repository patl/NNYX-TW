Then(/^user should see password reset confirmation message$/) do
  @browser.element(:class,"password_reset_modal").element(:css, 'h1').text == 'CHECK YOUR INBOX'
end

And(/^click on sign up now button from footer$/) do
  @browser.scroll.to :bottom
  @browser.element(:id, 'signupModal').click
end

When(/^user fill the email address filed on the pop\-up$/) do
  @browser.text_field(:id, 'dwfrm_newsletter_email').set(@email+'@gmail.com')
end

And(/^click on Submit button from the email pop\-up$/) do
  @browser.element(:class, 'dialog_email_signup_promo').button(:name, 'dwfrm_newsletter_signup').click
end

When(/^user verify the validation message for privacy policy on the pop\-up$/) do
  Watir::Wait.until {  @browser.element(:class, 'dialog_email_signup_promo').text.include? 'Please accept our Privacy Policy' } == true
end

Then(/^check the checkbox Privacy policy on subscription email pop\-up$/) do
  @browser.element(:class, 'dialog_email_signup_promo').element(:class, "formfieleld_accept_terms").click
end

Then(/^check the sms checkbox on email pop\-up$/) do
  @browser.element(:class, 'dialog_email_signup_promo').element(:class, "formfield_add_to_email_list").click
end

Then(/^user verifies the validation message for mobile phone number$/) do
 Watir::Wait.until { @browser.element(:class, 'dialog_email_signup_promo').text.include? 'Please enter valid phone number'} == true
end

When(/^user fills mobile number on email pop\-up with (.*)$/) do |mobile|
  @browser.element(:class, 'dialog_email_signup_promo').text_field(:id, 'dwfrm_newsletter_checkoutSubscription_mobile').to_subtype.clear
  @browser.element(:class, 'dialog_email_signup_promo').text_field(:id, 'dwfrm_newsletter_checkoutSubscription_mobile').set(mobile)
end

Then(/^user verify the thank you pop\-up after email subscription$/) do
  @browser.element(:class, 'dialog_email_signup_promo').element(:class, 'newsletter_subscribe_confirm').wait_until_present
end

Then(/^he fills on FB page email (.*)$/) do |fbemail|
  @browser.text_field(:id, 'email').set(fbemail)
end

Then(/^he fills on FB page pssword (.*)$/) do |fbpassword|
  @browser.text_field(:id, 'pass').set(fbpassword)

end

Then(/^he press on Log In button from FB page$/) do
  @browser.element(:id, 'loginbutton').click
end


Then(/^user press on language drop\-down on email pop\-up and selects (.*)$/) do |language|
  @browser.element(:class, 'dialog_email_signup_promo').element(:class, 'language-selector-desktop-link').click
  @browser.element(:class, 'dialog_email_signup_promo').element(:class, 'selectboxit-options').element(:link_text, language.upcase).click
end