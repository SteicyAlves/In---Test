class FormView
    include Capybara::DSL

    def form_title
        timeout = Capybara.default_max_wait_time
        timeout.times do
           @title = find('.login100-form-title').text.chomp
            sleep 1
        end
        return @title
    end
end