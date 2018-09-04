class MeuPerfil
    include Capybara::DSL

    def informa_empresa empresa
        find('#profile-company').set empresa
    end

    def seleciona_cargo cargo
        element = find('select[name$=job]')
        element.find('option', text: cargo).select_option
    end

    def salva_perfil
        #Busca Type button com texto Salvar
        click_button 'Salvar'
    end

    def alerta
        find(".alert-login")
    end
end
