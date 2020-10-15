Given('I navigate to Westpac Home Page') do
    @home_page = HomePage.new
    @home_page.load
end


And('I select {string} from {string} main menu') do |menu_item, menu|
    if(menu == 'KiwiSaver')then
        @home_page.kiwisaver_menu.hover
        
        if(menu_item == 'KiwiSaver Calculators')then
            @home_page.kiwisaver_calculators_menu.click
        end
    end
end

Then('the {string} page loads') do |page|
    if(page == 'KiwiSaver Calculators')then
        @calculators_page = KiwiSaverCalculatorsPage.new
    end

    if(page == 'KiwiSaver Retirement Calculator')then
        @calculator_page = KiwiSaverCalculatorPage.new
        expect(@calculator_page).to have_calculator
    end
end

Then('I click on {string}') do |option|
    if(option == 'Click here to get started.')then
        @calculators_page.click_here_to_get_started_btn.click
    end
end

Then('I click on information icon besides {string} field') do |string|
    expect(@calculator_page).to have_calculator
    @calculator_page.calculator do |frame|
        frame.current_age_help_icon.click
    end
end

Then('a message: {string} is displayed below the {string} field') do |msg, field|
    if(field == 'Current age')then
        expect(@calculator_page).to have_calculator
        @calculator_page.calculator do |frame|
            expect(msg).to match(frame.current_age_help.text)
        end
    end
end