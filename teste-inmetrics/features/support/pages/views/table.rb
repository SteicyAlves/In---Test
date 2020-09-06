class TableView
    include Capybara::DSL

    def table_employees
        find('#tabela')
    end
end