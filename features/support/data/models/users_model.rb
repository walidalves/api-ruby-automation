class UsersModel
    attr_accessor :nome, :email, :password, :administrador
  
    def user_payload
      {
        nome: @nome,
        email: @email,
        password: @password,
        administrador: @administrador
      }
    end
  end