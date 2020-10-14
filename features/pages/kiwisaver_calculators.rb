
class KiwiSaverCalculatorsPage < SitePrism::Page
    set_url "kiwisaver/calculators/"
    element :click_here_to_get_started_btn, :xpath, "//a[text()='Click here to get started.']" 

end