Given('a user of age and employment and salary who makes contribution and chooses risk profile') do |table|
    @data = table.hashes
end
  

When('these options are set in the Kiwisaver calculator') do
    data_for_row_one_of_table = @data[0]

    expect(@calculator_page).to have_calculator
    @calculator_page.calculator do |frame|
        frame.current_age.set(data_for_row_one_of_table['age'])
        frame.employment.click
        frame.select_employment(data_for_row_one_of_table['employment']).click
        
        if(data_for_row_one_of_table['salary'] != nil)then
            frame.salary.set(data_for_row_one_of_table['salary'])
        end

        if(data_for_row_one_of_table['current'] != nil)then
            frame.current_balance.set(data_for_row_one_of_table['current'])
        end

        if(data_for_row_one_of_table['contribution'] != nil) then
            frame.select_contribution(data_for_row_one_of_table['contribution']).click
        end

        if(data_for_row_one_of_table['voluntary'] != nil) then
            frame.voluntary_contributions.set(data_for_row_one_of_table['voluntary'])
        end

        if(data_for_row_one_of_table['frequency'] != nil) then
            frame.frequency.click
            frame.select_frequency(data_for_row_one_of_table['frequency']).click
        end

        if(data_for_row_one_of_table['goal'] != nil) then
            frame.savings_goal.set(data_for_row_one_of_table['goal'])
        end

        frame.select_profile(data_for_row_one_of_table['profile']).click

        #byebug
    end
    
end
  



Then('the correct projected balance is displayed') do
    data_for_row_one_of_table = @data[0]
    expect(@calculator_page).to have_calculator
    @calculator_page.calculator do |frame|
        expect(frame.projected_value.text).to match(data_for_row_one_of_table['projected'])
    end
end