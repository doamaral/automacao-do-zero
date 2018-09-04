#language:pt
Funcionalidade: Remover tarefas
    Como usuário
    Desejo ser capaz de Deletar minhas tarefas
    A fim de permanecer sempre mais organizado

    Cenário: remover tarefa existente
        Dado que tenho uma tarefa indesejada
        Quando solicito a exclusão da tarefa
        E confirmo a ação de exclusão
        Então essa tarefa não deve ser mais exibida

    Cenário: desistencia da remoção de tarefa
        Dado que tenho uma tarefa indesejada
        Quando solicito a exclusão da tarefa
        E desisto da ação de exclusão
        Então essa tarefa permanece na lista de tarefas