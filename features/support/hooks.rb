After do |scenario|
  if scenario.failed?
    @browser.screenshot.save (scenario.name+".png")
    embed(scenario.name+".png", 'image/png')

    encoded_img = @browser.screenshot.base64
    embed("data:image/png;base64,#{encoded_img}",'image/png')
  end
  @browser.quit
end