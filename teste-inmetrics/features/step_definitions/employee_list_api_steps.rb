Quando('eu realizo uma requisição de listagem de todos funcionários') do
    @result = ApiEmployee.list_all(@authorization)
  end
  
  Quando('eu realizo uma requisição de listagem de um funcionário') do
    @registered_employee = ApiEmployee.create(FactoryBot.build(:employee).to_hash, @authorization)
    @employee_Id = @registered_employee.parsed_response["empregadoId"]
    @result = ApiEmployee.list(@employee_Id, @authorization)
  end
  
  Então('eu vejo os dados do funcionário requisitado') do
    expect(@result.parsed_response["empregadoId"]).to eql @employee_Id.to_i
  end

  Quando('eu realizo uma requisição de listagem de um funcionário {string}') do |employee_Id|
    @result = ApiEmployee.list(employee_Id, @authorization)
  end