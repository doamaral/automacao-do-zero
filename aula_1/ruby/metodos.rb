def welcome
    puts "Bem vindo ao Curso Automação do Zero"
end

#Invocação do Método
welcome

#Método com argumentos (Parâmetros)
#def mostra_nome(nome)
def mostra_nome nome
    puts nome
end

# mostra_nome("Lucas Amaral")
mostra_nome "Lucas Amaral"

#soma_valor(v1,v2)
def soma_valor v1, v2
    v1 + v2
end

#puts soma_valor(10,30)
puts soma_valor 10, 30