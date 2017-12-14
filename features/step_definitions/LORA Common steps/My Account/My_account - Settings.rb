And(/^press on Logout$/) do
  @browser.element(:class, 'account_navigation_list').link(:text, "Sign Out").click
  end


And(/^fill confirm email for test user$/) do
  @browser.element(:id, "dwfrm_profile_customer_emailconfirm").send_keys('ogboiko@gmail.com')
end


Then(/^User fills password field with (.*)$/) do |usernewpassword|
  @browser.iframe(:class, 'login_iframe').element(:id, "dwfrm_login_password").send_keys(usernewpassword)
end

Then(/^press on update button from my account page$/) do
  @browser.element(:name, "dwfrm_profile_confirm").click
  sleep(10)
end


When(/^Add new address pop\-up is displayed$/) do
  @browser.element(:class,'account_address_detail_page').wait_until_present
end

Then(/^he fills Address name$/) do
  @browser.text_field(:id, "dwfrm_profile_address_addressid").set(@address_name)
end

And(/^he fills last name for address$/) do
  @browser.text_field(:id, "dwfrm_profile_address_lastname").set("Last name")
end

And(/^he select country for address$/) do
  @browser.element(:id, 'dwfrm_profile_address_countrySelectBoxItText').click
  @browser.element(:link_text, 'United States').click
end

Then(/^he press on Save address button$/) do
  @browser.button(:name,"dwfrm_profile_address_create").click

end

Then(/^verify that address is saved$/) do
    @browser.element(:tag_name, "body").text.include?("Address Book")
  @browser.element(:class, 'address_item').present?
end

And(/^check address Nickname is correct$/) do
  @browser.element(:class, 'mini_address_title').text.include?(@address_name) == true
end

When(/^user is logged in he can see My account title$/) do
  @browser.element(:class, 'primary').element(:class, 'account_user_name').text.include? 'Welcom'
end

And(/^he fills first name for address with (.*)$/) do |firstName|
  @browser.text_field(:id, "dwfrm_profile_address_firstname").set(firstName)
end

And(/^he fills last name for address with (.*)$/) do |lastName|
  @browser.text_field(:id, "dwfrm_profile_address_lastname").set(lastName)
end

And(/^he fills street address for address with (.*)$/) do |strAddress|
  @browser.text_field(:id, "dwfrm_profile_address_address1").set(strAddress)
end

And(/^he fills Phone number for address with (.*)$/) do |phone|
  @browser.text_field(:id, "dwfrm_profile_address_phone").set(phone)
end

And(/^he fills ZIP code for address wiht (.*)$/) do |postCode|
  @browser.text_field(:id, "dwfrm_profile_address_zip").set(postCode)
end


And(/^he selects State for address with (.*)$/) do |state|
  @state = state
  @browser.element(:id, 'dwfrm_profile_address_states_stateSelectBoxItText').click
  @browser.element(:link_text, @state).click
end

And(/^he fills city for address with (.*)$/) do |city|
  @browser.text_field(:id, "dwfrm_profile_address_city").set(city)
end