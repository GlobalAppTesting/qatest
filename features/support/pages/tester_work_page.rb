require 'site_prism'

class TesterWorkPage < SitePrism::Page
  set_url 'https://testers.testerwork.com/tester-account/test-cycles'

  element :drop_down_menu, :xpath, '//a[@id="account-dropdown"]'
  element :your_devices, :xpath, '//a[text()="Your Devices"]', match: :first

  def open_menu_option(option)
    drop_down_menu.click
    case option
    when 'Your Devices'
      your_devices.click
    else
      puts 'option not defined'
    end
  end
end
