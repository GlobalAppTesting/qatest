require 'site_prism'

class HomePage < SitePrism::Page
  set_url 'http://www.testerwork.com'

  element :login_button, :xpath, '//li[@id="sticky-nav-menu-item-9320"]', match: :first
end
