Before do
  Capybara.reset!
  page.driver.browser.manage.window.maximize
end

After do
  Capybara.reset!
end
