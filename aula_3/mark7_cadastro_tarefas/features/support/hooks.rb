Before do
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    @side = Sidebar.new
    @logout = Navbar.new
    @perfil_page = MeuPerfil.new
    @adcionar_tarefa_page = AdicionarTarefa.new
end

Before('@jalogado') do
    @login_page.acessa
    @login_page.logar("johndoe@email.com","123123")
end

After('@logout') do
    @logout.sair
end

After('@DeleteTask') do
   @tarefas_page.remove_tarefa @nome_tarefa
end