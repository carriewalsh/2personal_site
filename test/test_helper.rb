require "minitest/autorun"
require "minitest/pride"
require "capybara/minitest"
require "./app/controllers/personal_site"

Capybara.app = PersonalSite
class CapybaraTestCase < MiniTest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions
end
