Dado('que tenho uma massa configurada para o endpoint Usuarios.post para o cenário {string}') do |type|
    @users ||= OpenStruct.new
    @users.payload = type.eql?('positivo') ? build(:user).user_payload : { }
end
  
Quando('enviar uma requisição para o endpoint Usuarios.post') do
    @users.response = users.post_user(@users.payload)
end
 
Entao('Validar o retorno do endpoint Usuarios.post para o cenário {string}') do |type|
    if type.eql?('positivo')
        expect(@users.response.code).to eql 201
        expect(@users.response['message']).to be_an(String)
        expect(@users.response['_id']).to be_an(String)
      else
        expect(@users.response.code).to eql 400
    end
end