Before do
    @login_page = LoginPage.new
    @table = TableView.new
    @user_registration_page = UserRegistrationPage.new
    @form = FormView.new
    @employee_page = EmployeePage.new
    @navbar = NavbarView.new
end

Before("@login") do
    @login_page.with('user-test', 'qwer123')
end