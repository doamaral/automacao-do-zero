#language:pt
Funcionalidade: Autenticação de usuário
    Como um usuário cadastrado
    Quero poder me autenticar no sistema
    A fim de visualizar informações referentes a minha conta

    #Contexto são steps iniciais comuns aos Cenários
    Contexto: Acesso ao formulário de login
        Dado que acessei a página de Login

    #A tag @logout está sendo utilizada para executar um Hook associado a ela
    @Ready @Sucesso @logout
    Cenário: Login de usuário
        Quando faço login com "lopesdoamaral@gmail.com" e "asdfgh"
        Então sou autenticado com sucesso
        E sou redirecionado para o painel de tarefas com a mensagem "Olá, Lucas Amaral"

    #Scenario Outline é utilizado quando cenários se repetem alterando somente o valor dos parâmetros (Placeholders)
    #Obrigatoriamente vem com a tabela de exemplos
    @Ready @Tentativa
    Esquema do Cenário: Tentativa de logar
        Quando faço login com "<email>" e "<senha>"
        Então devo visualizar a mensagem "<mensagem>"
        
        Exemplos:
            | email                   | senha   | mensagem                    |
            | lopesdoamaral@gmail.com | asdfg   | Senha inválida.             |
            | asdfgh@gmail.com        | asdfgh  | Usuário não cadastrado.     |
            | asdfghgmail.com         | asdfgh  | Email incorreto ou ausente. |
            |                         |         | Email incorreto ou ausente. |
            | lopesdoamaral@gmail.com |         | Senha ausente.              |