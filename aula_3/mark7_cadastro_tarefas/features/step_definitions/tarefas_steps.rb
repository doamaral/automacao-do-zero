require 'faker'

Dado("que o nome da minha tarefa é {string}") do |nome_tarefa|
    #@nome_tarefa = "#{nome_tarefa} - #{Faker::Lorem.characters(5)}"
    #O uso do Faker além de poluir nesse caso, quebra os cenários com 0<= tamonho < 10
    @nome_tarefa = nome_tarefa
    Dao.new.remover_tarefas nome_tarefa, @usuario_logado[:email]
end

Dado("a data de finalização é {string}") do |data_tarefa|
    @data_tarefa = data_tarefa
end

Dado("adiciona as tags:") do |tags|
    @tags = tags.hashes
end

Quando("cadastro essa tarefa") do
    @tarefas_page.adicionar
    @adcionar_tarefa_page.cadastra_tarefas @nome_tarefa, @data_tarefa, @tags
end

Então("devo ver a tarefa com status {string}") do |status_tarefa|
    expect(@tarefas_page.busca_tarefa @nome_tarefa).to have_content status_tarefa
end

Dado("já possuo uma tarefa com esse nome") do
    #Dynamic step: um passo chama o outro
    steps %(
        Quando cadastro essa tarefa
    )
end

Então("devo ver a seguinte mensagem {string}") do |mensagem|
    expect(@adcionar_tarefa_page.mensagem_tentativa).to have_content mensagem
end

Dado("que tenho uma tarefa indesejada") do
    @nome_tarefa = "Tarefa Indesejada"
    @data_tarefa = "19/09/2018"
    # @tarefas_page.solicita_remocao @nome_tarefa
    # @tarefas_page.confirma_remocao 'Sim'
    @tarefas_page.adicionar
    @adcionar_tarefa_page.cadastra_tarefas @nome_tarefa, @data_tarefa, @tags
end

Quando("solicito a exclusão da tarefa") do
    @tarefas_page.solicita_remocao @nome_tarefa
end

Quando("confirmo a ação de exclusão") do
    @tarefas_page.confirma_remocao 'Sim'
end

Então("essa tarefa não deve ser mais exibida") do
    del = @tarefas_page.busca_tarefas @tarefa_a_deletar
    expect(del.size).to equal 0
end

Quando("desisto da ação de exclusão") do
    @tarefas_page.confirma_remocao 'Não, deixa queto.'
end

Então("essa tarefa permanece na lista de tarefas") do
    del = @tarefas_page.busca_tarefas @tarefa_a_deletar
    expect(del.size).to equal 1
end