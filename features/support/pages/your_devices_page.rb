require 'site_prism'

class YourDevicesPage < SitePrism::Page
  set_url 'https://testers.testerwork.com/tester-account/profile/hardware-software'

  element :add_another_desktop_device, :xpath, '//button[text()=" Add another desktop device"]'
  element :open_drop_menu, :xpath, '//div[@class="Select-control"]'
  # for quick solution i added only one system, but it can be changed to get paremeter
  element :select_windows_10, :xpath, "//div[@class='Select-menu']/div[@class='Select-option'][text()='Windows 10']"
  element :remove_windows_10, :xpath, "//div[@class='Select-menu']/div[@class='Select-option'][text()='Windows 10']"
  element :save_button, :xpath, "//button[@type='submit'][text()='Save']"

  def add_desktop_device
    add_another_desktop_device.click
    open_drop_menu.click
    select_windows_10.click
    save_button.click
  end

  def remove_desktop_device
    remove_windows_10.click
  end
end
