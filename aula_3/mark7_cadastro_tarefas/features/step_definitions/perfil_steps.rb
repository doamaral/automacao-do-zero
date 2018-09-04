Dado("que eu acessei o sistema com usuario {string} e {string}") do |email, senha|
	@login_page.acessa
	@login_page.logar(email, senha)
end

Dado("acesso o meu perfil") do
	@side.acessa_perfil
end

Quando("completo meu cadastro com {string} e {string}") do |empresa, cargo|
	@perfil_page.informa_empresa empresa
	@perfil_page.seleciona_cargo cargo
	@perfil_page.salva_perfil
end

Então("devo ver a mensagem de sucesso na atualização cadastral:") do |mensagem|
	expect(@perfil_page.alerta).to have_content mensagem
end