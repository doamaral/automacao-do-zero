# Projeto Mark7

## Versão 2:
* Arquivo login.feature
    * Os Steps que se repetem foram colocados em um "Contexto"
    * Uso do Esquema de Cenário (Scenario Outline) + Exemplos
* Arquivo hooks.rb
    * hooks são ações/métodos que podem acontecer antes ou depois de cada cenário ou de acordo com uma tag definida
* Arquivo login_steps.rb
    * Acessar uma página: **visit(_URL_)**
    * Seletor: **find("_seletor css_")**
    * Ação para preencher uma campo de input: **.set** x. Atribui valor a um Elemento retornado pelo **_find_**
* Arquivo env.rb
	* foi adicionada uma nova configuração para a URL base do sistema: config.app_host = 'https://mark7.herokuapp.com'
    