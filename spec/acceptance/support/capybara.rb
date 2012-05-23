Capybara.configure do |config|
  config.default_driver = :selenium
  config.javascript_driver = :selenium
  config.ignore_hidden_elements = true
end