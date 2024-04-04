require 'selenium-webdriver'

Given(/^the user navigates to the Google page$/) do
  @driver = Selenium::WebDriver.for :chrome
  @driver.get "https://www.google.com"
end

When(/^the user searches for "(.*)"$/) do |keyword|
  search_bar = @driver.find_element(name: "q")
  search_bar.send_keys keyword
  search_bar.submit
end

Then(/^the user is redirected to the results page for "(.*)"$/) do |keyword|
  expect(@driver.title.downcase.include? keyword.downcase).to be true
  @driver.quit
end