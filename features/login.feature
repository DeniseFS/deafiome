#language: pt


Funcionalidade: Login
    Sendo um usuario ja cadastrado
    Quero fazer o Login
    Para realizar compras

    @happyy
    Cenario: Login Sucesso
        Dado que estou na pagina de Login
        Quando submeto o meu usuario e senha
            | email | testecookie@mailinator.com |
            | senha | Salmos1:1                  |
        Então deve ser redirecionado para a área logada

    Esquema do Cenário: Tentativas de Login

        Dado que estou na pagina de Login
        Quando submeto o meu usuario e senha
            | email | <email> |
            | senha | <senha> |

        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                         | senha     | mensagem_saida             |
            | testecookie@mailinator.com.br | Salmos1:1 | Authentication failed.     |
            |                               |           | An email address required. |
            | teste123@mailinator.com       |           | Password is required.      |