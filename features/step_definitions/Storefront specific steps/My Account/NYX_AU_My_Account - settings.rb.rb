And(/^click on my account from header$/) do
  @browser.link(:class, "account_navigation_link").click
end

Then(/^user press on contact information from my account menu$/) do
  @browser.element(:id, 'myAccountNavigationPanel').element(:link_text, "Contact Information".upcase).click
end


Then(/^he press on Address book from my account menu$/) do
  @browser.element(:id, 'myAccountNavigationPanel').element(:link_text, "Address Book".upcase).click
end

When(/^user is on Address book page$/) do
  @browser.element(:tag_name, "body").text.include?("Address Book")
end

Then(/^he press on Add new address button$/) do
  @browser.element(:xpath, ".//*[@id='addresses']/a").click
end