module Rest
    class Users
        include HTTParty

        headers 'accept' =>  'application/json', 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_users
            self.class.get('/usuarios')        
        end

        def get_user(id)
            self.class.get("/usuarios/#{_id}")
        end

        def post_user(payload)
            self.class.post('/usuarios', body: payload.to_json)
        end
    end
end
