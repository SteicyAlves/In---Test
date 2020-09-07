class AlertView
    include Capybara::DSL

    def message
        find('.alert').text.chomp
    end
end