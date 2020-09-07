class EmployeePage
    include Capybara::DSL

    def submit_form
        find('#inputNome').set(Faker::Name.name_with_middle)
        find('#cpf').set(Faker::IDNumber.brazilian_citizen_number(formatted: true))
        select("Feminino", from: 'sexo')
        find('#inputAdmissao').set(Faker::Date.in_date_period)
        find('#inputCargo').set(Faker::Job.position)
        find('#dinheiro').set(Faker::Number.between(from: 104500, to: 1000000))
        choose('clt', allow_label_click: true)
        find('.cadastrar-form-btn').click
    end

    def go_edit
        first(".fa-pencil").click
    end

    def delete
        first('#delete-btn').click
    end
end