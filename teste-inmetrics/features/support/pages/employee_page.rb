class EmployeePage
    include Capybara::DSL

    def submit_form
        @employee = FactoryBot.build(:employee)

        find('#inputNome').set(@employee.nome)
        find('#cpf').set(@employee.cpf)
        select("Feminino", from: 'sexo')
        find('#inputAdmissao').set(@employee.admissao)
        find('#inputCargo').set(@employee.cargo)
        find('#dinheiro').set(@employee.salario)
        choose(@employee.tipoContratacao , allow_label_click: true)
        find('.cadastrar-form-btn').click
    end

    def go_edit
        first(".fa-pencil").click
    end

    def delete
        first('#delete-btn').click
    end
end