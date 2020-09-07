class EmployeeModel
    attr_accessor :nome, :cpf, :sexo, :admissao, :cargo, :salario, :tipoContratacao, :departamentoId, :comissao

    def to_hash
        {
            nome: @nome,
            cpf: @cpf,
            sexo: @sexo,
            admissao: @admissao,
            cargo: @cargo,
            salario: @salario,
            tipoContratacao: @tipoContratacao,
            departamentoId: @departamentoId,
            comissao: @comissao
        }
    end
end