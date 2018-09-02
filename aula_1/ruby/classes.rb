class Animal
    attr_accessor :idade

    def my_age
        return @idade
    end
end


class Cachorro < Animal
    attr_accessor :nome

    def late
        puts @nome + " -> Bark, bark"
    end
end

class Gato < Animal
    attr_accessor :nome

    def mia
        puts @nome + " -> miau..."
    end
end

class Pato < Animal
    attr_accessor :nome

    def quack
        puts @nome + " -> Quack, Quack..."
    end
end

baleia = Cachorro.new
baleia.nome = "Baleia"
puts baleia.nome
baleia.late
baleia.idade = 10
puts "Idade: #{baleia.my_age}"

spike = Cachorro.new
spike.nome = "Spike"
puts spike.nome
spike.late
spike.idade = 1
puts "Idade: #{spike.my_age}"

gatin = Gato.new
gatin.nome = "Chanin"
puts gatin.nome
gatin.mia
gatin.idade = 3
puts "Idade: #{gatin.my_age}"

patolino = Pato.new
patolino.nome = "Patolino"
puts patolino.nome
patolino.quack
patolino.idade = 2
puts "Idade: #{patolino.my_age}"

