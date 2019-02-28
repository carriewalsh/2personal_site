require "minitest/autorun"
require "minitest/pride"
require "minitest/capybara"
require "./app/controllers/personal_site"

Capybara.app = PersonalSite
class CapybaraTest < MiniTest::Test
  include Capybara::DSL
  include Capybara::MiniTest::Assertions
end
