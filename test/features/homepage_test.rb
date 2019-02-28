require "./test/test_helper"

class HomepageTest < CapybaraTestCase
  def test_user_can_see_homepage
    visit "/"
    welcome = "Welcome! This is a website!"
    assert page.has_content?("#{welcome}")
    assert_equal 200, page.status_code
  end

  def test_homepage_links_to_about
    visit "/"
    click_on "About"
    assert_equal 200, page.status_code
    assert_equal "/about", current_path
    assert page.has_content?("About Me!")
  end

  def test_homepage_links_to_cute_puppy_page
    visit "/"
    click_on "Cute puppies!"
    assert_equal 200, page.status_code
    assert_equal "/cute_puppies", current_path
    assert page.has_content?("So cute!")
  end
end
