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
        frame.salary.set(data_for_row_one_of_table['salary'])
        frame.select_contribution(data_for_row_one_of_table['contribution']).click
        frame.select_profile(data_for_row_one_of_table['profile']).click
    end
end
  



Then('the correct projected balance is displayed') do
    data_for_row_one_of_table = @data[0]
    expect(@calculator_page).to have_calculator
    @calculator_page.calculator do |frame|
        expect(frame.projected_value.text).to match(data_for_row_one_of_table['projected'])
        
    end

end