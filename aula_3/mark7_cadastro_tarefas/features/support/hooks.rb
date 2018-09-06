Before do
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    @side = Sidebar.new
    @logout = Navbar.new
    @perfil_page = MeuPerfil.new
    @adcionar_tarefa_page = AdicionarTarefa.new
    page.current_window.resize_to 1200, 800
end

#Logar
Before('@jalogado') do
    @login_page.acessa
    @usuario_logado = {email: 'johndoe@email.com', senha: '123123'}
    @login_page.logar(@usuario_logado[:email],@usuario_logado[:senha])
end

After('@logout') do
    @logout.sair
end

#Deletar uma tarefa após inclui-la
After('@deletetask') do
   @tarefas_page.solicita_remocao @nome_tarefa
   @tarefas_page.confirma_remocao 'Sim'
end