class LoginPage
    include Capybara::DSL

    def go
        visit "/"
    end

    def with(user, password)
        find('input[name="username"]').set(user)
        find('input[name="pass"]').set(password)

        find('.login100-form-btn').click
    end
end