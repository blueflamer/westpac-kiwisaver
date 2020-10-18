After do | scenario |

    if scenario.failed?
        filename = "Failure-#{scenario.name.slice(0..150).gsub(%r(/['\/\000£$]/), '_').gsub(/\s/, '_')}-#{Time.now.to_i}"
        page.driver.browser.save_screenshot("#{filename}.png")
    end

end