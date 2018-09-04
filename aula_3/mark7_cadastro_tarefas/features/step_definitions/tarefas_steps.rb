Dado("que o nome da minha tarefa é {string}") do |nome_tarefa|
    @tarefas_page.adicionar
    @nome_tarefa = nome_tarefa
end

Dado("a data de finalização é {string}") do |data_tarefa|
    @data_tarefa = data_tarefa
end

Dado("adiciona as tags:") do |tags|
    @tags = tags.hashes
end

Quando("cadastro essa tarefa") do
    @adcionar_tarefa_page.cadastra_tarefas @nome_tarefa, @data_tarefa, @tags
end

Então("devo ver a tarefa com status {string}") do |status_tarefa|
    expect(@tarefas_page.busca_tarefa @nome_tarefa).to have_content status_tarefa
end

Dado("já possuo uma tarefa com esse nome") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("devo ver a seguinte mensagem {string}") do |mensagem|
  expect(@adcionar_tarefa_page.mensagem_tentativa).to have_content mensagem
end