require 'site_prism'

class MenuSection < SitePrism::Section
  element :login_button, :xpath, '(//span[@class="item_text"][text()="LOGIN"])[2]'
end
