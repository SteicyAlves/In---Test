#language: pt

@login @funcionario
Funcionalidade: Gestão de Funcionários
    Para gerenciar o quadro de funcionários da empresa
    Eu como usuário da Inmetrics
    Quero cadastrar, editar e excluir funcionários

    @cadastro_funcionario_sucesso
    Cenário: Cadastro de Funcionário com Sucesso
    Dado que eu estou na tela de cadastro de funcionários
    Quando eu realizo o cadastro de um novo funcionário
    Então eu vejo um alerta de "SUCESSO! Usuário cadastrado com sucesso"

    @edicao_funcionario_sucesso
    Cenário: Edição de Funcionário com Sucesso
    Dado que eu estou na tela de edição de funcionários
    Quando eu realizo a edição de um funcionário cadastrado
    Então eu vejo um alerta de "SUCESSO! Informações atualizadas com sucesso"

    @exclusao_funcionario_sucesso
    Cenário: Exclusão de Funcionário com Sucesso
    Dado que eu estou na tela listagem de funcionários
    Quando eu realizo a exclusão de um funcionário cadastrado
    Então eu vejo um alerta de "SUCESSO! Funcionário removido com sucesso"