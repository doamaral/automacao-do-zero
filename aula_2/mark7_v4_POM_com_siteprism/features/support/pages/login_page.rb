class LoginPage < SitePrism::Page
    #SitePrism:
    # Cria um atributo de classe como um elemento através do seletor 
    element :campo_email, '#login_email'
    element :campo_senha, '#login_password'
    element :botao_entrar, '.loginButton'
    element :alerta_login, '.alert-login'

    def logar(email,senha)
        #SitePrism:
        # set: Atribuição de valor
        # click: Clique no Elemento 
        # text: Texto do elemento. Traz todo o texto dos elementos internos
        # select: Selecionar uma 
        campo_email.set email
        campo_senha.set senha
        botao_entrar.click
    end
end