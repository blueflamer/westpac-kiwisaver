class KiwiSaverCalculatorIFrame < SitePrism::Page
    element :current_age_help_icon, :xpath, "//div[@help-id='CurrentAge']//button"
    element :current_age_help, :xpath, "//div[@help-id='CurrentAge']//p"

    element :current_age, :xpath, "//div[@label='Current age']//input"

    element :salary, :xpath, "//div[@label='Salary or wages per year (before tax)']//input"
    element :projected_value, :xpath, "//span[@class='result-value result-currency ng-binding']"

    element :current_balance, :xpath, "//div[@label='Current KiwiSaver balance']//input"
    element :voluntary_contributions, :xpath, "//div[@label='Voluntary contributions']//input"
    element :savings_goal, :xpath, "//div[@label='Savings goal at retirement']//input"


    element :employment, :xpath, "//div[@label='Employment status']//div[@class='control select-control  no-selection']"
    element :frequency, :xpath, "//div[@label='Voluntary contributions']//div[@class='control select-control  no-selection']"


    

    #element :employed, :xpath, "//span[text()='Employed']//../parent::li"
    #element :notemployed, :xpath, "//span[text()='Not employed']//../parent::li"
    #element :sefemployed, :xpath, "//span[text()='Self-employed']//../parent::li"


    def select_employment(employment)
        page.find(:xpath, "//span[text()='#{employment}']//../parent::li")
    end

    def select_frequency(frequency)
        page.find(:xpath, "//span[text()='#{frequency}']//../parent::li")
    end


    def select_contribution(contribution)
        page.find(:xpath, "//div[@label='KiwiSaver member contribution']//span[text()='#{contribution}']")
    end

    def select_profile(risk)
        page.find(:xpath, "//div[@label='Risk profile']//span[text()='#{risk}']")
    end

end