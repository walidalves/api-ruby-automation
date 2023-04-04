module Rest
    class Users
        include Httparty

        headers 'accept' =>  'application/json', 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']
    
        def post_user(payload)
          self.class.post('/usuarios', body: payload.to_json)
        end
    end
end
