Dado('que tenho uma massa configurada para o endpoint Usuarios.post para o cenário {string}') do |type|
    @usuarios ||= OpenStruct.new
    @usuarios.payload = type.eql?('positivo') ? build(:usuario).usuario_payload : { }
  end
  
  Quando('enviar uma requisição para o endpoint Usuarios.post') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao('Validar o retorno do endpoint Usuarios.post para o cenário {string}') do |type|
    pending # Write code here that turns the phrase above into concrete actions
  end