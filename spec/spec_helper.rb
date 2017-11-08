require 'rspec'
require 'selenium-webdriver'
require 'yaml'

module BaseClass
  class << self

    attr_reader :driver

    def initialize(driver)
      @driver = driver
    end

    def start_browser
      Selenium::WebDriver::Chrome.driver_path='./drivers/chromedriver'
      @driver = Selenium::WebDriver.for :chrome
      @driver.manage.window.maximize
    end

    def select_element(selector)
      Selenium::WebDriver::Support::Select.new(selector)
    end

    def element_exist?(selector)
      begin
        @driver.find_element(selector)
        true
      rescue Selenium::WebDriver::Error::NoSuchElementError => e
        false
      end
    end
  end
end

RSpec.configure do |c|
  c.example_status_persistence_file_path = 'examples.txt'
end

class Selenium::WebDriver::Element
  def scroll_to
    BaseClass.driver.execute_script "window.scrollTo(#{self.location_once_scrolled_into_view.x},#{self.location_once_scrolled_into_view.y})"
  end
end
