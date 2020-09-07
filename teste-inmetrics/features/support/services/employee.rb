class ApiEmployee
    include HTTParty

    base_uri "https://inm-api-test.herokuapp.com"
    headers  "Content-Type" => "application/json"

    def self.create(employee, authorization)
        post("/empregado/cadastrar", headers: { "Authorization" => authorization }, body: employee.to_json)
    end

    def self.list_all
        get("/empregado/list_all")
    end
end