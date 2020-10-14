Given('I navigate to Westpac Home Page') do
    @home_page = HomePage.new
    @home_page.load
end


Given('select {string} from {string} main menu') do |menu_item, menu|
    if(menu == 'KiwiSaver')then
        @home_page.kiwisaver_menu.hover
        @home_page.kiwisaver_calculators_menu.click
    end
end

Then('the {string} page loads') do |string|
    @calculators_page = KiwiSaverCalculatorsPage.new
end

Then('click on {string}') do |option|
    if(option == 'Click here to get started.')then
        @calculators_page.click_here_to_get_started_btn.click
    end
    byebug
end