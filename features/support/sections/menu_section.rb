require 'site_prism'
# this part of code is not used now, but i cane extract some stuff from pages to sections
class MenuSection < SitePrism::Section
  element :login_button, :xpath, '(//span[@class="item_text"][text()="LOGIN"])[2]'
end
