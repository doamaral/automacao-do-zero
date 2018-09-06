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

    def busca_tarefas nome_tarefa
       all('#tasks tbody tr', text: nome_tarefa)
    end

    def busca_tarefa nome_tarefa
       find('#tasks tbody tr', text: nome_tarefa)
    end

    def solicita_remocao nome_tarefa
        busca_tarefa(nome_tarefa).find("#delete-button").click
    end

    def confirma_remocao resposta
        within '.modal-content' do
            click_button resposta
        end
        sleep 0.2
    end
end