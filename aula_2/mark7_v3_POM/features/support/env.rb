require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    #config.default_driver =  :selenium_chrome_headless
    config.default_driver = :selenium_chrome
    # config.default_driver = :selenium_firefox

    config.app_host = 'https://mark7.herokuapp.com'
end

#Com essa configuração espera até x segundos por um elemento. Evitando usar sleep
#Sleep definem tempos FIXOS que pode ser desnecessário e causar lentidão
Capybara.default_max_wait_time = 5