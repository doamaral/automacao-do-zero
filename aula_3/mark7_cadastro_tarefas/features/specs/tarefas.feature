#language:pt

@jalogado
Funcionalidade: Cadastro de Tarefas
    Como usuário
    Desejo cadastrar uma Tarefa
    Para não perder o rastreio das minhas atividades 

    @smoke  @logout
    Cenário: Cadastrar tarefas
        Dado que o nome da minha tarefa é "Fazer compras"
        E a data de finalização é "05/09/2018"
        E adiciona as tags:
            |tag|
            |Ketchup|
            |Maçã|
            |Banana|
        Quando cadastro essa tarefa
        Então devo ver a tarefa com status "Em andamento"
    
    @logout @dup
    Cenário: Tarefa não pode ser duplicada
        Dado que o nome da minha tarefa é "Ler um livro de MongoDB"
        E a data de finalização é "05/09/2018"
        Mas já possuo uma tarefa com esse nome
        Quando cadastro essa tarefa
        Então devo ver a seguinte mensagem "Tarefa duplicada." 
    
    @logout
    Esquema do Cenário: Tentativa de Cadastro de Tarefas
        Dado que o nome da minha tarefa é "<nome_tarefa>"
        E a data de finalização é "<data_tarefa>"
        Quando cadastro essa tarefa
        Então devo ver a seguinte mensagem "<mensagem>"

            Exemplos:
            | nome_tarefa | data_tarefa | mensagem                            |
            | Ler         | 28/10/2018  | 10 caracteres é o mínimo permitido. |
            |             | 28/10/2018  | Nome é obrigatório                  |
