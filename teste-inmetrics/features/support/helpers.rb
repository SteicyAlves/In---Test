module Helpers

    def file_name(scenario)
        name_scenario = scenario.name.gsub(/[^A-Za-z0-9]/, '')
        name_scenario = name_scenario.gsub(' ', '_').downcase!
    end

    def print_screen(file_path, file_name, result)
        screenshot = "#{file_path}/teste_#{result}/#{file_name}.png"
        page.save_screenshot(screenshot)

        screenshot_binary = Base64.encode64(File.open(screenshot).read)
        embed(screenshot_binary, "image/png", file_name)
    end
end