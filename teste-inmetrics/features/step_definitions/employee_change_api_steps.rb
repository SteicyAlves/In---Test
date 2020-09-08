Quando('eu realizo uma requisição de alteração de funcionário') do
    @registered_employee = FactoryBot.build(:registered_employee)
    @new_employee = FactoryBot.build(:employee)
    @result = ApiEmployee.update(@registered_employee.empregadoId, @new_employee.to_hash, @authorization)
  end
  
  Então('eu vejo que as informações foram alteradas') do
    expect(@result.parsed_response["nome"]).to eql @new_employee.nome
    expect(@result.parsed_response["sexo"]).to eql @new_employee.sexo
    expect(@result.parsed_response["cpf"]).to eql @new_employee.cpf
    expect(@result.parsed_response["cargo"]).to eql @new_employee.cargo
    expect(@result.parsed_response["admissao"]).to eql @new_employee.admissao
    expect(@result.parsed_response["salario"]).to eql @new_employee.salario
    expect(@result.parsed_response["comissao"]).to eql @new_employee.comissao
    expect(@result.parsed_response["tipoContratacao"]).to eql @new_employee.tipoContratacao
  end
  
  Quando('eu realizo uma requisição de alteração de funcionário {string}') do |employee_type|
    @registered_employee = FactoryBot.build(:registered_employee)
    @new_employee = FactoryBot.build(employee_type)
    @result = ApiEmployee.update(@registered_employee.empregadoId, @new_employee.to_hash, @authorization)
  end