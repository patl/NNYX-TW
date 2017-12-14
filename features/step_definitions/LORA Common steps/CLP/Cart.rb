When(/^user press on Edit link for product on Cart page$/) do
  @browser.element(:class, 'item_details').element(:class, 'item_edit_details').click
end

Then(/^user verified that price is multiply to (.*)$/) do |qnt|
  @a = qnt.to_i
  sleep(5)
  @price_in_integer = @product_price[2..-1].to_i
  @price_in_integer = @price_in_integer * @a
  @price_in_srt =  @price_in_integer.to_s
  @browser.element(:class, 'order_subtotal').text == 'Subtotal A$' + ' ' + @price_in_srt + '.00'
end

Then(/^user press on add to wishlist from cart page$/) do
  @browser.element(:class, 'item_details').element(:class, 'add_to_wishlist').click
end

When(/^user see confirmation pop\-up$/) do
  @browser.element(:class, 'save-result-dialog').wait_until_present.present? == true
end

Then(/^he press on See my wishlist link$/) do
  @browser.element(:link_text, 'see my wishlist').wait_until_present.click
end

When(/^user is redirected to my account \- wishlist$/) do
  @browser.element(:css, 'h1 > span').wait_until_present.text == 'Wishlist'.upcase
end

And(/^he verified that product is displayed$/) do
  @browser.element(:class, 'wishlist_products').text.include? @product_name
end

Then(/^he press on remove link from wishlist$/) do
  @browser.element(:class,'wishlist_products').element(:name, 'dwfrm_wishlist_items_i0_deleteItem').click
 sleep (5)
  (@browser.element(:class, 'wishlist_products').text.include? @product_name) == false
end


Then(/^user do mousover on minicart form header$/) do
  @browser.element(:class, 'minicart').hover
end

Then(/^close the  pop\-up$/) do
  @browser.element(:class, "ui-dialog-titlebar-close").wait_until_present.click
end

When(/^Added to cart pop\-up is displayed$/) do
  @browser.element(:class, 'addedtocart_dialog').wait_until_present
end