Dado ('que tenho uma massa configurada para o endpoint Usuarios.get para o cenário {string}') do |type|
    @users ||= OpenStruct.new
    @users.payload = type.eql?('positivo') ? build(:user).user_payload : { }
end

Quando ('enviar uma requisição para o endpoint Usuarios.get') do
    @id = "0uxuPY0cbmQhpEz1"
    @users = users.get_user(@id)
end

Entao ('validar o retorno do endpoint Usuarios.get para o cenário {string}') do |type|
    if type.eql?('positivo')
        expect(@users.response.code.to_i).to eql(200)
        expect(@users.message).not_to be_empty
        expect(@users.body).not_to be_empty
    else
        expect(@users.response.code).to eql 400
    end
end