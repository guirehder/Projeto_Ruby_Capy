
# begin
#     # Devo tentar algo
#     file = File.open('./ola.tt')
#     if file
#         puts file.read
#     end
# rescue Exception => e

#     puts e.message
#     puts e.backtrace
#     # Obter um possível erro
# end

#Try/Catch


def soma(n1,n2)
    n1+n2
rescue Exception => e
    puts 'Erro'
end

soma('10', 5)