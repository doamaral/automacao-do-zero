Dado("que acessei a página de Login") do
  @login_page.acessa
end

Quando("faço login com {string} e {string}") do |email, senha|
    @email = email
    @login_page.logar(email, senha)

end

Então("sou autenticado com sucesso") do 
  expect(@tarefas_page.checa_perfil).to eql @email
end

Então("sou redirecionado para o painel de tarefas com a mensagem {string}") do |mensagem_ola|
  expect(@tarefas_page.painel).to have_content mensagem_ola
end

Então("devo visualizar a mensagem {string}") do |mensagem_alerta|
  expect(@login_page.mensagem_alerta).to eql mensagem_alerta
end