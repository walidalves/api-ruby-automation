Dado ('que tenho uma massa configurada para o endpoint Usuarios.get para o cenário {string}') do |type|
    @users ||= OpenStruct.new
    if type.eql?('positivo')
        @users.payload = build(:user).user_payload
        @users.response = users.post_user(@users.payload)
        @user_id = @users.response['_id'] # armazena o ID do usuário criado na variável de instância
    else
        @user_id = 0001
    end
end

Quando ('enviar uma requisição para o endpoint Usuarios.get') do
    @users = users.get_user(@user_id) # usa o ID armazenado na variável de instância
end

Entao ('validar o retorno do endpoint Usuarios.get para o cenário {string}') do |type|
    if type.eql?('positivo')
        expect(@users.response.code.to_i).to eql(200)
        expect(@users.message).not_to be_empty
        expect(@users.body).not_to be_empty
    else
        expect(@users.response.code.to_i).to eql(400)
    end
end
