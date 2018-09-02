# Definindo Array
arr = Array.new
puts arr.class

# Definindo no momento da inicialização
avengers = ["Iron Man"]

# Inserindo Elementos 
avengers.push("Spider Man")
avengers.push("Hulk")

puts avengers
puts avengers.inspect

#Acessando elemento dentro do Array
# Os arrays iniciam de "0"
# Deve imprimir "Hulk"
puts avengers[2]

#Iterar sobre o Arr
puts "Iniciando iteração"
avengers.each do |a|
    puts "Vingador: #{a}"
end

puts "Iniciando iteração condicional"
avengers.each do |a|
    puts a if a == "Hulk"
end