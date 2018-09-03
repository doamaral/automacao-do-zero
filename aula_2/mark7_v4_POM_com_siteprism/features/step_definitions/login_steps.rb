Dado("que acessei a página de Login") do
  visit 'https://mark7.herokuapp.com/login'
  @login_page = LoginPage.new
  @navbar = Navbar.new
  @tarefas_page = TarefasPage.new
end

Quando("faço login com {string} e {string}") do |email_usu, senha_usu|
    @email = email_usu
    @login_page.logar(email_usu,senha_usu)
end

Então("sou autenticado com sucesso") do
  expect(@navbar.menu_usuario.text).to eql @email
end

Então("sou redirecionado para o painel de tarefas com a mensagem {string}") do |mensagem_ola|
  expect(@tarefas_page.painel).to have_content mensagem_ola
end

Então("devo visualizar a mensagem {string}") do |mensagem_alerta|
  expect(@login_page.alerta_login.text).to eql mensagem_alerta
end