#language:pt
Funcionalidade: Meu perfil
    Como usuário, desejo completar o cadastro do meu perfil

    Cenário: Acessar perfil
        Dado que eu acessei o sistema com usuario "lopesdoamaral@gmail.com" e "123123"
        Dado acesso o meu perfil
        Quando completo meu cadastro
        Então devo ver a mensagem de sucesso na atualização cadastral:
        """
        Perfil atualizado com sucesso
        """



