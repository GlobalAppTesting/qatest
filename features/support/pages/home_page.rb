require 'site_prism'

class HomePage < SitePrism::Page
  set_url 'http://www.testerwork.com'

  element :login_button, :xpath, '(//span[@class="item_text"][text()="LOGIN"])[2]'
end
