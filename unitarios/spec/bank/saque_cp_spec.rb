require_relative '../../app/bank'

describe ContaPoupanca do

    describe 'Saque' do
        context 'quando o valor e positivo' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@cp.saldo).to eql 798.00
            end    
        end
        
        context 'quando o saldo e zero' do
            before(:all) do
                @cp = ContaPoupanca.new(0.00)
                @cp.saca(100.00)
            end

            it 'vejo mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'meu saldo permanece com zeros' do
                expect(@cp.saldo).to eql 0.00
            end
        end

        context 'quando o saldo esta insuficiente' do
            before(:all) do
                @cp = ContaPoupanca.new(100.00)
                @cp.saca(101.00)
            end

            it 'vejo mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'meu saldo permanece conforme o valor inicial' do
                expect(@cp.saldo).to eql 100.00
            end
        end

        context 'quando o valor do saque e maior que o limite por transacao' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(701.00)
            end

            it 'vejo mensagem' do
                expect(@cp.mensagem).to eql 'Saldo maximo por saque e de R$500'
            end

            it 'meu saldo permanece conforme o valor inicial' do
                expect(@cp.saldo).to eql 1000.00
            end
        end
    end
end