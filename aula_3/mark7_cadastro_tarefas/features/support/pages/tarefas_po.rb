class TarefasPage
    include Capybara::DSL


    def painel
        find('#task-board')
    end

    def checa_perfil
        element = find(".profil-link a[href*='dropdown']")
        element.text
    end

    def adicionar
        find('#insert-button').click
    end

    def busca_tarefa nome_tarefa
       linha = find('#tasks tbody tr', text: nome_tarefa)
    end

    def remove_tarefa nome_tarefa
        linha = find('#tasks tbody tr', text: nome_tarefa)
        within linha do
            click_button 'Apagar'
        end

        within '.modal-content' do
            click_button 'Sim'
        end
    end
end