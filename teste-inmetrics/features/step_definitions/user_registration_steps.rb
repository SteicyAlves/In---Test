Dado('que eu estou na tela de cadastro de usuário') do
    @user_registration_page.go
  end
  
  Quando('eu realizo meu cadastro de usuário') do
    @user_registration_page.user_registration
  end
  
  Então('eu sou direcionado para a tela de login') do
    expect(@form.form_title).to eql 'Login'
  end
  
  Quando('eu realizo meu cadastro com um usuário já cadastrado') do
    @user_registration_page.duplicate_user_registration
  end

  Então('eu vejo um aviso de {string}') do |erro|
    expect(@user_registration_page.alert).to eql erro
  end