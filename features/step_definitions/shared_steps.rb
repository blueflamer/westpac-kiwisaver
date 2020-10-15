Given('I navigate to Kiwisaver calculator') do

    steps %Q{
        Given I navigate to Westpac Home Page 
        And I select "KiwiSaver Calculators" from "KiwiSaver" main menu
        Then the "KiwiSaver Calculators" page loads
        And I click on "Click here to get started."
        Then the "KiwiSaver Retirement Calculator" page loads
      }
      
end

Then('I click on {string}') do |option|
  if(option == 'Click here to get started.')then
      #@calculators_page.click_here_to_get_started_btn.click
      @calculators_page.find(:xpath, "//a[text()='#{option}']").click
  end

  if(option == 'View your KiwiSaver retirement projections')then
    expect(@calculator_page).to have_calculator
    @calculator_page.calculator do |frame|
        frame.find(:xpath, "//span[text()='#{option}']//parent::button").click
    end
  end

end