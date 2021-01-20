class Veiculo

    attr_accessor :nome, :marca, :modelo

    def initialize(nome,marca,modelo)
      self.nome = nome
      self.marca = marca
      self.modelo = modelo
    end
    
    def ligar
        puts "#{nome} esta pronto para iniciar o trajeto!"
    end

    def buzinar
        puts 'Beep!'
    end

class Carro < Veiculo
   
    def dirigir
        puts "#{nome} iniciando o trajeto."
    end

end

class Moto < Veiculo
    attr_accessor :nome, :marca, :modelo

    def pilotar
        puts "#{nome} iniciando o trajeto."
    end

end

civic = Carro.new('Civic','Honda', 'SI')
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new('Lancer', 'Mitsubishi', 'Evo')
lancer.ligar
lancer.buzinar
lancer.dirigir


fazer = Moto.new('Fazer', 'Yamaha', '250x')
fazer.ligar
fazer.buzinar
fazer.pilotar

