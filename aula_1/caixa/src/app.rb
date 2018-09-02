class Conta
    attr_accessor :saldo, :mensagem_saida, :limite_saque

    def saque(valor)
        @limite_saque = 700
        if valor > @limite_saque
            @mensagem_saida = "Valor máximo por transação deve ser de R$ 700!"
        elsif @saldo > valor
            @saldo -= valor
            @mensagem_saida = "Saque com sucesso. Muito obrigado!"
        else
            @mensagem_saida = "Saldo insuficiente para saque."
        end
    end
end