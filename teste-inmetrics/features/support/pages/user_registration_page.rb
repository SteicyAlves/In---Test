class UserRegistrationPage
    include Capybara::DSL

    def go
        visit "/"
        click_on('Cadastre-se')
    end

    def user_registration(user, password)
        find('input[name="username"]').set(user)
        find('input[name="pass"]').set(password)
        find('input[name="confirmpass"]').set(password)

        find('.login100-form-btn').click
    end

    def alert
        find('.container-login100-form-btn').text.chomp
    end
end