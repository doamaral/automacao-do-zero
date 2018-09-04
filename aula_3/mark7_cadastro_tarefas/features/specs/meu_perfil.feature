#language:pt
Funcionalidade: Meu perfil
    Como usuário, desejo completar o cadastro do meu perfil
    
    @logout
    Esquema do Cenário: Atualizar perfil
        Dado que eu acessei o sistema com usuario "<email>" e "<senha>"
        E acesso o meu perfil
        Quando completo meu cadastro com "<empresa>" e "<cargo>"
        Então devo ver a mensagem de sucesso na atualização cadastral:
        """
        Perfil atualizado com sucesso
        """
        Exemplos:
            |email|senha| empresa   | cargo      |
            | johndoe@email.com | 123123 | Yahoo | Developer |
            | lopesdoamaral@gmail.com | 123123 | Google | QA |
            # |  |  | Microsoft | CEO |
            # |  |  | Linkedin | CTO |
            # |  |  | Facebook | Estagiario |



