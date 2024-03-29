require 'selenium-webdriver'

Given(/^the user navigates to the Google page$/) do
  @driver = Selenium::WebDriver.for :chrome
  @driver.get "http://google.com"
end

When(/^the user searches for "(.*)"$/) do |keyword|
  element = @driver.find_element(name: "q")
  element.send_keys keyword
  element.submit
end

Then(/^the user is redirected to the results page for "(.*)"$/) do |keyword|
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  wait.until { @driver.title.downcase.start_with? keyword }
  puts "Page title is #{@driver.title}"
  @driver.close
end