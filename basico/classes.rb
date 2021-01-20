    # Ruby é uma linguagem considerada puramente orientada a objeto

    # Porque no Ruby tudo é objeto

    # Classe possui atributos e métodos
    # Características e Ações

    # Carro (nome, Marca, Modelo, Cor, Quantidade de Portas, etc...)
    # Ligar, businar

    class Carro
        attr_accessor :nome
    
        def Ligar
            puts 'O carro está pronto para iniciar o trajeto'
        end

    end

    civic = Carro.new
    civic.nome = 'Civic'

    puts civic.nome

    civic.Ligar 