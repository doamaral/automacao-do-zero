#language:pt
Funcionalidade: Autenticação de usuário
    Como um usuário cadastrado
    Quero poder me autenticar no sistema
    A fim de visualizar informações referentes a minha conta

    @Ready @Sucesso @logout
    Cenário: Login de usuário
        Dado que acessei a página de Login
        Quando faço login com "lopesdoamaral@gmail.com" e "asdfgh"
        Então sou autenticado com sucesso
        E sou redirecionado para o painel de tarefas com a mensagem "Olá, Lucas Amaral"

    @Ready @Tentativa
    Cenário: Login com senha inválida
        Dado que acessei a página de Login
        Quando faço login com "lopesdoamaral@gmail.com" e "asdfghj"
        Então devo visualizar a mensagem "Senha inválida."

    @Ready @Tentativa
    Cenário: Login com email não cadastrado
        Dado que acessei a página de Login
        Quando faço login com "asdfgh@gmail.com" e "asdfgh"
        Então devo visualizar a mensagem "Usuário não cadastrado."

    @Ready @Tentativa
    Cenário: Login com formato de email inválido
        Dado que acessei a página de Login
        Quando faço login com "asdfghgmail.com" e "asdfgh"
        Então devo visualizar a mensagem "Email incorreto ou ausente."