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
        @user = FactoryBot.build(:user)
        create_with(@user.nome_usuario, @user.senha)
    end

    def duplicate
        @user = FactoryBot.build(:user)
        create_with(@user.nome_usuario, @user.senha)
        go
        create_with(@user.nome_usuario, @user.senha)
    end

    def alert
        first('.container-login100-form-btn').text.chomp
    end
end