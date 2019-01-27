require_relative '../support/pages/tester_work_page'

Given /^I open (Your Devices) from drop down menu$/ do |menu_option|
  tester_work = TesterWorkPage.new
  tester_work.open_menu_option(menu_option)
end

Then /^I add Windows 10 to operating system$/ do
  # we can add parameter to add any system by string
  your_devices = YourDevicesPage.new
  your_devices.wait_until_add_another_desktop_device_button_visible
  your_devices.add_desktop_device
end

Then /^I remove Windows 10 from operating system$/ do
  # we can add parameter to remove any system by string
  your_devices = YourDevicesPage.new
  your_devices.wait_until_add_another_desktop_device_button_visible
  your_devices.remove_desktop_device
end

Then /^Windows 10 (is|is not) visible on the list$/ do |value|
  your_devices = YourDevicesPage.new
  case value
  when 'is'
    expect(your_devices.has_windows_10_list_item?).to eq true
  when 'is not'
    expect(your_devices.has_windows_10_list_item?).to eq false
  else
    puts 'you need to define an option'
  end
end
