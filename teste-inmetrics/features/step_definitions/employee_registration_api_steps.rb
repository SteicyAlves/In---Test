Dado('que eu estou autenticado pela API') do
  @authorization = "Basic aW5tZXRyaWNzOmF1dG9tYWNhbw=="
end

  Quando('eu realizo uma requisição de cadastro de funcionário') do
    @employee = FactoryBot.build(:employee).to_hash
    @result = ApiEmployee.create(@employee, @authorization)
  end
  
  Então('eu vejo o id do novo funcionário cadastrado') do
    expect(@result.parsed_response["empregadoId"].to_s).not_to be nil
  end
  
  Então('o código de retorno {string}') do |status_code|
    expect(@result.response.code).to eql status_code
  end

  Quando('eu realizo uma requisição de cadastro de funcionário {string}') do |body_type|
    @employee = FactoryBot.build(body_type).to_hash
    @result = ApiEmployee.create(@employee, @authorization)
  end

  Então('eu vejo o código de retorno {string}') do |status_code|
    expect(@result.response.code).to eql status_code
  end