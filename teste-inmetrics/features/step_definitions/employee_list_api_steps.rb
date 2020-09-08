Quando('eu realizo uma requisição de listagem de todos funcionários') do
    @result = ApiEmployee.list_all(@authorization)
  end
  
  Quando('eu realizo uma requisição de listagem de um funcionário') do
    @registered_employee = FactoryBot.build(:registered_employee)
    @result = ApiEmployee.list(@registered_employee.empregadoId, @authorization)
  end
  
  Então('eu vejo os dados do funcionário requisitado') do
    expect(@result.parsed_response["empregadoId"]).to eql @registered_employee.empregadoId
  end

  Quando('eu realizo uma requisição de listagem de um funcionário {string}') do |employee_type|
    @employee = FactoryBot.build(employee_type)
    @result = ApiEmployee.list(@employee.empregadoId, @authorization)
  end