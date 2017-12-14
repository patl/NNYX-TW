After do |scenario|
  if scenario.failed?
    @browser.screenshot.save (scenario.name+".png")
    embed(scenario.name+".png", 'image/png')
  end
  @browser.quit
end