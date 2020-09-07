Dado('que eu estou na tela de login') do
    @login_page.go
end

Quando('eu realizo login com um {string} e uma {string}') do |user, password|
  @login_page.with(user,password)
end

Então('eu vejo a tabela de empregados') do
  expect(@table.table_employees).not_to be nil 
end

Então('eu vejo um alerta de {string}') do |error|
    expect(@alert.message).eql? error
end