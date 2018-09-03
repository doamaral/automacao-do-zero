Before do
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    @side = Sidebar.new
    @logout = Navbar.new
end

Before('@jalogado') do
    @login_page.acessa
    @login_page.logar("lopesdoamaral@gmail.com","123123")
end

After('@logout') do
    @logout.sair
end