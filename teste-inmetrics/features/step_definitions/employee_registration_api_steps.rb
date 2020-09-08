Dado('que eu estou autenticado pela API') do
  expect(@authorization).not_to be nil
end

Dado('que eu não estou autenticado pela API') do
  @authorization = ""
end

  Quando('eu realizo uma requisição de cadastro de funcionário') do
    @employee = FactoryBot.build(:employee)
    @result = ApiEmployee.create(@employee.to_hash, @authorization)
  end
  
  Então('eu vejo as informações do novo funcionário cadastrado') do
    expect(@result.parsed_response["empregadoId"]).not_to be nil
    expect(@result.parsed_response["nome"]).to eql @employee.nome
    expect(@result.parsed_response["sexo"]).to eql @employee.sexo
    expect(@result.parsed_response["cpf"]).to eql @employee.cpf
    expect(@result.parsed_response["cargo"]).to eql @employee.cargo
    expect(@result.parsed_response["admissao"]).to eql @employee.admissao
    expect(@result.parsed_response["salario"]).to eql @employee.salario
    expect(@result.parsed_response["comissao"]).to eql @employee.comissao
    expect(@result.parsed_response["tipoContratacao"]).to eql @employee.tipoContratacao
  end
  
  Então('o código de retorno {string}') do |status_code|
    expect(@result.response.code).to eql status_code
  end

  Quando('eu realizo uma requisição de cadastro de funcionário {string}') do |body_type|
    @employee = FactoryBot.build(body_type)
    @result = ApiEmployee.create(@employee.to_hash, @authorization)
  end

  Então('eu vejo o código de retorno {string}') do |status_code|
    expect(@result.response.code).to eql status_code
  end