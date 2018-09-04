class AdicionarTarefa
    include Capybara::DSL

    def cadastra_tarefas nome, data_tarefa, tags
        within '#add-task' do
            fill_in 'title', with: nome
            fill_in 'dueDate',  with: data_tarefa
            click_button 'Cadastrar'
        end
    end
end