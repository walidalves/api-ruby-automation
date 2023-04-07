Dado ('que tenho uma lista de massa configurada para o endpoint Usuarios.get para o cenário {string}') do |type|
    @users ||= OpenStruct.new
end

Quando ('enviar uma requisição para o endpoint Usuarios.get listar os usuários') do
    @users = users.get_users
end

Entao ('validar o retorno da lista de usuários do endpoint Usuarios.get para o cenário {string}') do |type|
  
  if type.eql?('positivo')
    expect(@users.response.code.to_i).to eql(200)
    expect(@users.message).not_to be_empty
    expect(@users.body).not_to be_empty
  else
    expect(@users.response.code.to_i).to eql(400)
  end
end
