Dado('que eu estou na tela de cadastro de funcionários') do
    @navbar.new_employee
  end
  
  Quando('eu realizo o cadastro de um novo funcionário') do
    @employee_page.submit_form
  end
  
  Dado('que eu estou na tela de edição de funcionários') do
    @employee_page.go_edit
  end
  
  Quando('eu realizo a edição de um funcionário cadastrado') do
    @employee_page.submit_form
  end
  
  Dado('que eu estou na tela listagem de funcionários') do
    expect(@table.table_employees).not_to be nil
  end
  
  Quando('eu realizo a exclusão de um funcionário cadastrado') do
    @employee_page.delete
  end