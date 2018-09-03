# Projeto Mark7
## Gerenciador de Tarefas

##Features
* Login
* Cadastro de usuários
* CRUD de tarefas
* Troca de Senha
* Minha Conta (atualização cadastral)
* Finalizar tarefa

## Versão 1
* Arquivo login.feature
    * .feature criados para a aplicação Mark7
    * Os cenários foram reescritos para focar na necessidade de negócio, em vez do passo a passo de um caso de teste convencional
* Arquivo Gemfile
    * foram adicionadas as Gems: 'selenium-webdriver' e 'capybara'
    * bundle install
* Arquivo env.rb
    * Configurações do Capybara
    	* Configuração do navegador que será utilizado
    	* Capybara.default_max_wait_time = 5 importante para definir o timeout