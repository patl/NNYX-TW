When(/^User click on Signin Register link from header$/) do
  @browser.element(:class, 'account_navigation_link').click
end

Then(/^User is redirected to My account sign in  page$/) do
@browser.element(:class, 'account_signin').wait_until_present
end

Then(/^press on Create an account button$/) do
  @browser.element(:class, 'create_account_button').click
end

And(/^Verify that Create My Account page is displayed$/) do
  @browser.element(:css, "h1").text == 'Create Account'.upcase
end


And(/^Verify that Fb icon is displayed$/) do
  @browser.a(:class, "fb_button").present? == true
end

Then(/^Fill greeting Mr or Mrs or Miss$/) do
  @browser.label(:text, "Ms./Mrs.").click
end

Then(/^he press on Connection button$/) do
  @browser.element(:name, 'dwfrm_login_login').click
end

And(/^Verify validation message for login field$/) do
  @browser.element(:class , "f_error_message").text == "Please enter your email address"
end


Then(/^he press on forgot your password link$/) do
  @browser.link(:class, 'password_reset').click
end


And(/^user fills first name with (.*)$/) do |firstname|
 @browser.text_field(:id, "dwfrm_profile_customer_firstname").set(firstname)
 end

And(/^user fills last name with (.*)$/) do |lastname|
  @browser.text_field(:id, "dwfrm_profile_customer_lastname").set(lastname)
  end

And(/^user fills mobile number on register page wit (.*)$/) do |mobile|
  @browser.text_field(:id, "dwfrm_profile_customer_mobile").to_subtype.clear
  @browser.text_field(:id, "dwfrm_profile_customer_mobile").set(mobile)
  end

And(/^user fills email$/) do
  @browser.text_field(:id, "dwfrm_profile_customer_email").set(@email+'@gmail.com')
  
end

And(/^user fills postal code with (.*)$/) do |postcode|
 @browser.text_field(:id, "dwfrm_profile_customer_postal").set(postcode)
end

And(/^user fills password$/) do
  @browser.text_field(:id, "dwfrm_profile_login_password").set(@pass)
end

And(/^user fills confirm password$/) do
  @browser.text_field(:id, "dwfrm_profile_login_passwordconfirm").set(@pass)
end

And(/^check the checkbox SMS$/) do
  @browser.element(:class, 'formfield_add_to_email_list').element(:class, 'f_label_value').click
end

When(/^user press on FB icon$/) do
  @browser.element(:class, 'dw-social-login').click
end


And(/^user selects gender (.*)$/) do |gender|
  @browser.element(:id, 'dwfrm_profile_customer_genderSelectBoxIt').click
  if @br == :firefox
  @browser.element(:id, 'dwfrm_profile_customer_genderSelectBoxItOptions').element(:link_text, gender).click
  else
    @browser.element(:id, 'dwfrm_profile_customer_genderSelectBoxItOptions').element(:link_text, gender.upcase).click
end
  end