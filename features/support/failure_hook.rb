After do | scenario |

    if scenario.failed?
        #path = "html-report/#{scenario.__id__}.html"
        #page.driver.browser.save_screenshot(path)
        #embed(path, "image/png")
    #end

    #screenshot = "log/screenshots/#{scenario.name}.png"
    #screenshot = "log/screenshots/apple.png"
    #page.save_screenshot(screenshot)
    #puts(screenshot)
    #embed(screenshot, 'image/png', 'Screen_Evidence')
    #scenario.attach(screenshot, 'image/png');
    #scenario.attach('This is some text that also goes into the report');
    end
end