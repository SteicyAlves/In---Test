class NavbarView
    include Capybara::DSL

    def new_employee
        click_on('Novo Funcionário')
    end
end