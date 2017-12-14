require 'cucumber'
require 'watir'
require 'watir-scroll'
require 'parallel_tests'
require 'rspec'
require 'win32ole'


 #def basic_auth

  #  autoit = WIN32OLE.new("AutoItX3.Control")
   # sleep (2)
    #autoit.WinActivate("Windows Security", "")
    #autoit.Send('storefront')
    #autoit.Send("{TAB}")
    #autoit.Send('loreal1')
    #autoit.Send("{ENTER}")
 #end

Given(/^open the site$/) do

@br = :firefox

#@link = "http://www.nyxcosmetics.com.au"
if @br == :ie
  @link =  "https://dev25-emea-loreal.demandware.net/on/demandware.store/Sites-nyxcosmetics-tw-Site/zh_TW/Home-Show"

else
  @link =  "https://storefront:loreal1@dev25-emea-loreal.demandware.net/on/demandware.store/Sites-nyxcosmetics-tw-Site/zh_TW/Home-Show"
end

  def desktopbrowser
    @browser = Watir::Browser.new @br
    @browser.cookies.clear
    @browser.window.maximize
  end


if @br == :chrome
  desktopbrowser
  @browser.goto @link
  end

if @br == :firefox
  Selenium::WebDriver::Firefox::Binary.path='C:\Program Files (x86)\Mozilla Firefox\firefox.exe'
  desktopbrowser
  @browser.goto @link
  alert = @browser.alert.exists?
   if alert == true
     @browser.alert.ok
     sleep (2)
     @browser.goto @link
   else
      p 'no alert'
   end

end

if @br == :ie
  desktopbrowser
  IO.popen("C:\\Users\\ogboi\\OneDrive\\Documents\\GitHub\\LORA\\features\\support\\authwibdow.exe")
  @browser.goto @link


end

  if @br == :edge
    IO.popen("C:\\Users\\ogboi\\OneDrive\\Documents\\GitHub\\LORA\\features\\support\\authwibdow.exe")
    @browser.goto @link
  end

if @br == :mobile
  driver = Webdriver::UserAgent.driver(browser: :chrome, agent: :iphone6splus, orientation: :portrait)
  @browser = Watir::Browser.new driver
  @browser.goto @link
  @browser.goto @link
end


      #Generate random pass/email
  o = [('a'..'z')].map { |i| i.to_a }.flatten
a=[('0'..'9')].map { |i| i.to_a }.flatten
  @name1 = (0...5).map { o[rand(o.length)] }.join
  @name2 = (0...5).map { o[rand(o.length)] }.join
  @email = (0...5).map { o[rand(o.length)] }.join
  @pass = (0...10).map { o[rand(o.length)] }.join
  @pass1 = (0...10).map { o[rand(o.length)] }.join
  @phone = (0...8).map { a[rand(a.length)] }.join
  @address_name = (0...5).map { o[rand(o.length)] }.join
end

And(/^close the browser$/) do
  @browser.close
end


And(/^close the newsletter pop-up$/) do
  @browser.element(:class, "js_newsletter_subscribe").wait_until_present.present? == true
  @browser.element(:class, "ui-dialog-titlebar-close").wait_until_present.click
end
