
And(/^fill first name$/) do
  @browser.element(:id, "dwfrm_profile_customer_firstname").send_keys(@name1)

end

And(/^fill last name$/) do
  @browser.element(:id, "dwfrm_profile_customer_lastname").send_keys(@name2)
end

And(/^fill email$/) do
  @browser.element(:id, "dwfrm_profile_customer_email").send_keys(@email+'@gmail.com')
end

And(/^fill confirm email$/) do
  @browser.element(:id, "dwfrm_profile_customer_emailconfirm").send_keys(@email+'@gmail.com')
end

And(/^fill password (.*)$/) do |usernewpassword|
  @browser.element(:id, "dwfrm_profile_login_password").to_subtype.clear
  @browser.element(:id, "dwfrm_profile_login_password").send_keys(usernewpassword)
  p @pass
end

And(/^fill confirm password (.*)$/) do |usernewpassword|
  @browser.element(:id, "dwfrm_profile_login_passwordconfirm").to_subtype.clear
  @browser.element(:id, "dwfrm_profile_login_passwordconfirm").send_keys(usernewpassword)

end

Then(/^press on Create your account button$/) do
  @browser.execute_script('javascript:window.scrollBy(0,100)')
  @browser.element(:name, "dwfrm_profile_confirm").click
  end

When(/^user is created he should see Welcome message$/) do
 @browser.span(:class, "account_user_name").inner_html == 'Welcome' + " " + @name1
  end

And(/^fill birthday$/) do
  #fill date
  @browser.element(:id, 'dwfrm_profile_customer_birthdayfields_daySelectBoxItText').click
  @browser.element(:link, "02").click
  #fill mm
  @browser.element(:id, 'dwfrm_profile_customer_birthdayfields_monthSelectBoxItText').click
  if @br == :firefox
  @browser.element(:id, 'dwfrm_profile_customer_birthdayfields_monthSelectBoxItOptions').element(:link, "March").click
  else
    @browser.element(:id, 'dwfrm_profile_customer_birthdayfields_monthSelectBoxItOptions').element(:link, "March".upcase).click
  end
    #fill yy
  @browser.element(:id, 'dwfrm_profile_customer_birthdayfields_yearSelectBoxItText').click
  @browser.element(:link, "1991").click
end

And(/^fill Phone number$/) do
  @browser.element(:id, 'dwfrm_profile_customer_mobile').send_keys('0623123123')
end


And(/^check the checkbox Privacy$/) do
  @browser.element(:class, 'formfield_accept_terms').click
end

Then(/^user should see validation error (.*) for phone$/) do |errorphone|
  (@browser.element(:id, 'RegistrationForm').text.include? errorphone).should == true
end