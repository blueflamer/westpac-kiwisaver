
class HomePage < SitePrism::Page
    set_url "/"
    element :kiwisaver_menu, :xpath, "//a[@href='/kiwisaver/' and @class='sw-ubermenu-section-link ']" 
    element :kiwisaver_calculators_menu, :xpath, "//a[@href='/kiwisaver/calculators/' and @id='ubermenu-item-cta-kiwisaver-calculators-ps']"


end