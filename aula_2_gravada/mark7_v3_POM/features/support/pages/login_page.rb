class LoginPage
    include Capybara::DSL
    def campo_email
        find('#login_email')
    end
    def campo_senha
        find('#login_password')
    end
    def botao_entrar
        find('.loginButton')
    end
    def alerta_login
        find('.alert-login')
    end
end