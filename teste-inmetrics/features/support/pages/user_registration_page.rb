class UserRegistrationPage
    include Capybara::DSL

    def go
        visit "/accounts/signup/"
    end

    def create_with(user, password)
        find('input[name="username"]').set(user)
        find('input[name="pass"]').set(password)
        find('input[name="confirmpass"]').set(password)

        find('.login100-form-btn').click
    end

    def create
        @user = Faker::Internet.username(specifier: 8)
        @password = Faker::Internet.password(min_length: 8)
        create_with(@user, @password)
    end

    def duplicate
        @user = Faker::Internet.username(specifier: 8)
        @password = Faker::Internet.password(min_length: 8)

        create_with(@user, @password)
        go
        create_with(@user, @password)
    end

    def alert
        first('.container-login100-form-btn').text.chomp
    end
end