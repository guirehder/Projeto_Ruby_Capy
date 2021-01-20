require_relative '../../app/bank'

describe ContaCorrente do

    describe 'Saque' do
        context 'quando o valor e positivo' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@cc.saldo).to eql 795.00
            end    
        end
        
        context 'quando o saldo e zero' do
            before(:all) do
                @cc = ContaCorrente.new(0.00)
                @cc.saca(100.00)
            end

            it 'vejo mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'meu saldo permanece com zeros' do
                expect(@cc.saldo).to eql 0.00
            end
        end

        context 'quando o saldo esta insuficiente' do
            before(:all) do
                @cc = ContaCorrente.new(100.00)
                @cc.saca(101.00)
            end

            it 'vejo mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'meu saldo permanece conforme o valor inicial' do
                expect(@cc.saldo).to eql 100.00
            end
        end

        context 'quando o valor do saque e maior que o limite por transacao' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(701.00)
            end

            it 'vejo mensagem' do
                expect(@cc.mensagem).to eql 'Saldo maximo por saque e de R$700'
            end

            it 'meu saldo permanece conforme o valor inicial' do
                expect(@cc.saldo).to eql 1000.00
            end
        end
    end
end