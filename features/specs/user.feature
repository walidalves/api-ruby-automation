#language: pt

@contract
Funcionalidade: Usuarios
    validar comportamento da API Usuarios

    Swagger: https://github.com/ServeRest/ServeRest

    @#walid_arnous
    @get_users
    Esquema do Cenário: [CONTRACT] - Validar lista de usuários pelo endpoint Usuarios.get
        Enviar uma requisição para o endpoint Usuarios.get
        Validar o retorno dos usuários cadastrados
        Validar o tipo de cada campo do response

        Dado que tenho uma massa configurada para o endpoint Usuarios.get para o cenário "<tipo>"
        Quando enviar uma requisição para o endpoint Usuarios.get listar os usuários
        Entao validar o retorno da lista de usuários do endpoint Usuarios.get para o cenário "<tipo>"

        Exemplos:
          |   tipo   |
          | positivo |
          | negativo |
    
    @#walid_arnous
    @get_user
    Esquema do Cenário: [CONTRACT] - Validar o endpoint Usuarios.get
        Enviar uma requisição para o endpoint Usuarios.get
        Validar o retorno do usuário cadastrado
        Validar o tipo de cada campo do response

        Dado que tenho uma massa configurada para o endpoint Usuarios.get para o cenário "<tipo>"
        Quando enviar uma requisição para o endpoint Usuarios.get
        Entao validar o retorno do endpoint Usuarios.get para o cenário "<tipo>"

        Exemplos:
          |   tipo   |
          | positivo |
          | negativo |

    @#walid_arnous
    @post_user
    Esquema do Cenário: [CONTRACT] - Validar o endpoint Usuarios.post
        Enviar uma requisição para o endpoint Usuarios.post
        Validar o retorno do usuário cadastrado
        Validar o tipo de cada campo do response

        Dado que tenho uma massa configurada para o endpoint Usuarios.post para o cenário "<tipo>"
        Quando enviar uma requisição para o endpoint Usuarios.post
        Entao Validar o retorno do endpoint Usuarios.post para o cenário "<tipo>"

        Exemplos:
          |   tipo   |
          | positivo |
          | negativo |
