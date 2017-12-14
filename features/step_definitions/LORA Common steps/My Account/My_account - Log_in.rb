When(/^Reset password popup is displayed$/) do
  @browser.element(:class, "forgot-password__dialog").wait_until_present.present? == true
end

Then(/^he fill field with email$/) do
  @browser.text_field(:id, "dwfrm_requestpassword_email").set("ogboiko@gmail.com")
end

And(/^press on submit button$/) do
  @browser.button(:name,"dwfrm_requestpassword_send").click
end


When(/^user is logged in he can see his name in header$/) do
  @browser.element(:class, "header_welcome_message").text == 'Welcome'
end

When(/^he fills login field with (.*)$/) do |userlogin|
  @browser.text_field(:id, 'dwfrm_login_username').wait_until_present.set(userlogin)
end

When(/^he fills password field with (.*)$/) do |userpassword|
  @browser.text_field(:id, 'dwfrm_login_password').wait_until_present.set(userpassword)

end

When(/^user press on burger menu$/) do
   @browser.element(:class, 'navigation_header').wait_until_present.click
 end

When(/^user close toolkit$/) do
  @browser.element(:class, 'cookie_banner_accept').wait_until_present.click
  @browser.iframe(:id, 'DW-SFToolkit').element(:id, 'dw-sf-control-close-button').click
end

And(/^press on close button$/) do
  @browser.element(:class, 'display_close_button').click
end

Then(/^verify that user is logged in and welcome (.*) is displayed in header$/) do |firstname|
  (@browser.element(:class, 'user_name').text == firstname).should == true
end

