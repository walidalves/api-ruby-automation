module Rest
    class Users
        include Httparty

        headers 'accept' =>  'application/json', 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_users
            self.class.get('/Usuarios')        
        end

        def get_user(id)
            self.class.get("/usuarios/#{id}")
        end
    end
end