Dado ('que tenho uma massa configurada para o endpoint Usuarios.get para o cenário {string}') do |type|
    @users ||= OpenStruct.new
end

Quando ('enviar uma requisição para o endpoint Usuarios.get listar os usuários') do
    @users = users.get_users
end

Entao ('validar o retorno da lista de usuários do endpoint Usuarios.get para o cenário {string}') do |type|
  expect(@users.code).to eq status_code
  expect(@users.message).to not_to be_empty
end
