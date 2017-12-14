Then(/^user selects any refinement$/) do

  #@browser.element(:class, 'refinement_collections').click
 # new_ref = @browser.element(:class, 'plp_navigation_panel').element(:link_text, 'Ligne Visage et Corps').text
  @browser.element(:class, 'refinement_category').element(:class, 'refinement_list_link').click
 end


Then(/^user press on the product from the grid$/) do
  @browser.element(:class, 'product_tile_wrapper').click
end

And(/^user verify that Find a store button is displayed$/) do
  @browser.element(:class, 'find-store').present? == true
end

Then(/^check olapic is present$/) do
  (@browser.element(:class, 'olapic').wait_until_present.present?).should == true
end

And(/^hove on olapic image and verify that product is displayed$/) do
  @browser.element(:class, 'olapic').hover
  (@browser.element(:xpath, ".//*[@id='olapic_specific_widget_1']/div/div[1]/div/div/ul").wait_until_present.present?).should==true
end