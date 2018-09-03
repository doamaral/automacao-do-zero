class TarefasPage
    include Capybara::DSL


    def painel
        find('#task-board')
    end

    def checa_perfil
        element = find(".profil-link a[href*='dropdown']")
        element.text
    end
end