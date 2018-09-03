Dado("que acessei a página de Login") do
  visit '/login'
end

Quando("faço login com {string} e {string}") do |email, senha|
    @email = email
    @login_page = LoginPage.new
    @login_page.campo_email.set email
    @login_page.campo_senha.set senha
    @login_page.botao_entrar.click
end

Então("sou autenticado com sucesso") do
  menu_usuario = find(".profil-link a[href*='dropdown']")
  expect(menu_usuario.text).to eql @email
end

Então("sou redirecionado para o painel de tarefas com a mensagem {string}") do |mensagem_ola|
  task_board = find("#task-board")
  expect(task_board).to have_content mensagem_ola
end

Então("devo visualizar a mensagem {string}") do |mensagem_alerta|
  expect(@login_page.alerta_login.text).to eql mensagem_alerta
end