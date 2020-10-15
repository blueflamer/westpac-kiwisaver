class KiwiSaverCalculatorIFrame < SitePrism::Page
    element :current_age_help_icon, :xpath, "//div[@help-id='CurrentAge']//button"
    element :current_age_help, :xpath, "//div[@help-id='CurrentAge']//p"

end