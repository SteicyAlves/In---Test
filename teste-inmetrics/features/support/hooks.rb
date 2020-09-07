Before do
    @login_page = LoginPage.new
    @table = TableView.new
    @user_registration_page = UserRegistrationPage.new
    @form = FormView.new
    @employee_page = EmployeePage.new
    @navbar = NavbarView.new
    @alert = AlertView.new
end

Before("@login") do
    user = CONFIG["users"]["test_user"]
    @login_page.go
    @login_page.with(user["user"], user["password"])
end