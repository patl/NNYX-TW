When(/^user navigates to lip\-lingerie\-landin page$/) do
  @browser.goto "https://dev25-emea-loreal.demandware.net/s/nyxcosmetics-tw/zh_TW/lip-lingerie-landing.html"
end


Then(/^he should see the banner$/) do
  @browser.element(:id, 'homeMainBanner').present?.should == true
end

And(/^should see the lipsticks$/) do
  @browser.element(:class, 'product_lineup').present?.should == true
end

When(/^user do mouseover on the lipsticks$/) do
  @browser.element(:class, 'product_lineup').hover

end

Then(/^user should see qv button and click on it$/) do
  @browser.element(:class, 'product_lineup').element(:class, 'intro_quickshop').present?.should == true
  @browser.element(:class, 'product_lineup').element(:class, 'intro_quickshop').click

end

When(/^QV pop\-up id displayed$/) do
  (@browser.element(:id, 'pdp_section_topcontent').wait_until_present.present?).should == true
end

Then(/^close the qv pop\-up$/) do
  @browser.element(:class, 'ui-dialog').element(:class, 'ui-dialog-titlebar-close').click

end

Then(/^user should see '24' shades section$/) do
  @browser.element(:class, 'swatches_pair').present?.should == true
end

When(/^user click on the plus icon he should see qv$/) do
  @browser.element(:class, 'lipli_bag').click
  @browser.element(:id, 'QuickViewDialog').wait_until_present.present?.should == true
end

Then(/^user should see NUDES FOR ALL section$/) do
  @browser.element(:class, 'nude_for_all_cont').present?.should == true
end

When(/^user click on navigation arrows$/) do
  @browser.element(:class, 'nude_galleryPrev').click
  (@browser.element(:class, 'gallery_product').wait_until_present.present?).should == true
  end

Then(/^user should see ARM SWATCHES section$/) do
  @browser.element(:class, 'arm_swatches_cont').present?.should == true
end

When(/^user clicks on navigation arrows$/) do
  @browser.element(:class, 'arm_galleryPrev').click
end

Then(/^user should see BEAUTY BAR VIDEOS video section$/) do
  @browser.element(:class, 'yt_container').present?.should == true
end

When(/^user navigates to brow\-how\-to page$/) do
  @browser.goto "https://dev25-emea-loreal.demandware.net/s/nyxcosmetics-tw/zh_TW/brow-how-to.html"
end

Then(/^user should see header$/) do
  @browser.element(:class, 'browsHeader').present?.should == true
end

Then(/^user should see GET THE LOOK section$/) do
  @browser.element(:class, 'looks').present?.should == true
end

When(/^user clicks on Shop the look tab$/) do
  @browser.element(:xpath, '//*[@id="ui-id-2"]').click
end

Then(/^user should see product$/) do
  @browser.element(:class, 'productContainer').present?.should == true
end

When(/^user do mouseover on the prodcut$/) do
  @browser.element(:class, 'productContainer').hover

end

Then(/^QV button should be displayed$/) do
  @browser.element(:class, 'quickviewbutton').present?.should == true
end

When(/^user press on QV button$/) do
  @browser.element(:class, 'quickviewbutton').click
end

Then(/^user should see choose your shade section$/) do
  @browser.element(:class, 'juitabs').present?.should == true
end

When(/^user clicks on tabs$/) do
  @browser.execute_script('javascript:window.scrollBy(0,700)')
  sleep (4)
  @browser.element(:class, 'shades').element(:class, 'everyone bar').click

end

Then(/^verify that products are displayed$/) do
  @browser.element(:class, 'productContainer').present?.should == true
end

When(/^user do mousover on the product$/) do
  @browser.element(:class, 'product').element(:class, 'productContainer').hover

end

Then(/^user should see QV button$/) do
  @browser.element(:class, 'product').element(:class, 'productContainer').click
end

Then(/^user should see view all brows section with text (.*)$/) do |viewall|
  @browser.element(:class, 'container_bg').present?.should == true
  (@browser.element(:class, 'shopText').text.include? viewall).should == true

end

Then(/^user should see WHAT'S TRENDING IN BROWS section$/) do
  @browser.element(:id, 'olapic_specific_widget').present?.should == true
end

When(/^user do mouseover on the image$/) do
  @browser.element(:class, 'olapic-item').hover
end

When(/^user should see insta label$/) do
  @browser.element(:class, 'olapic-moreinfo-back').present?.should == true
end

When(/^user clicks on any image$/) do
  @browser.element(:class, 'olapic-item').click

end

Then(/^user should see QA opened$/) do
  @browser.element(:class, 'viewer-column-right').wait_until_present.present?.should == true
end

And(/^verify that product is displayed on the QV$/) do
  @browser.element(:class, 'viewer-column-right').element(:class, 'product-list-item-image').present?.should == true

end

Then(/^close the qv olapic pop\-up$/) do
  @browser.element(:id, 'closeViewer').click
  @browser.element(:class, 'viewer-column-right').present?.should == false

end