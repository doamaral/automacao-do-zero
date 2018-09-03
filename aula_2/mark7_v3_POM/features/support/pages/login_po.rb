class LoginPage
    include Capybara::DSL

    def acessa
        visit('/login')
    end

    def logar(email, senha)
        find('#login_email').set email
        find('#login_password').set senha
        find('.loginButton').click()
    end

    def mensagem_alerta

        element = find('.alert-login')
        element.text

    end
end