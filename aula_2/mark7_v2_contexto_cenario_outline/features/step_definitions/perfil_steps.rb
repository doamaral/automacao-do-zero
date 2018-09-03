Dado("que eu acessei o sistema com usuario {string} e {string}") do |email, senha|
  visit '/login'
  @email = email
  find('#login_email').set email
  find('#login_password').set senha
  find('.loginButton').click()
end

Dado("acesso o meu perfil") do
  within('aside[class=navigation]') do
    click_link('Perfil')
  end
end

Quando("completo meu cadastro") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("devo ver a mensagem de sucesso na atualização cadastral:") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end