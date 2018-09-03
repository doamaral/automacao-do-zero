Dado("que eu acessei o sistema com usuario {string} e {string}") do |email, senha|
  @login_page.acessa
  @login_page.logar(email, senha)
end

Dado("acesso o meu perfil") do

  @side.acessa_perfil
end

Quando("completo meu cadastro") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("devo ver a mensagem de sucesso na atualização cadastral:") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end