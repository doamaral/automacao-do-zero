Dado("que acessei a página de Login") do
  visit 'https://mark7.herokuapp.com/login'
end

Quando("faço login com {string} e {string}") do |email, senha|
    # #login_email
    # #login_password
    # .loginButton
    # $("input[title *='email']"); símbolo *= Contém email
    # $("input[title $='email']"); símbolo $= termina com email
    # $("input[title ^='email']"); símbolo ^= comeca com email
    # $("input[name = 'email'");
    @email = email
    find('#login_email').set email
    find('#login_password').set senha
    find('.loginButton').click()

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
  alerta_login = find('.alert-login')
  expect(alerta_login.text).to eql mensagem_alerta
end