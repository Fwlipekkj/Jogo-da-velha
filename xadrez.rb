final_do_jogo = false

## tentativa de fazer um bot que irá fazer o jogo comigo

inimigo = nil



teste = [[1,2,3], [4,5,6], [7,8,9]]

def show(teste)
    puts "\nTABULEIRO\n\n"
    teste.each do |r|
        puts r.each { |p| p }.join(' ')
    end
end

while final_do_jogo == false do
    puts "\nJogador 1, escolha uma linha do tabuleiro"
    linha = gets.chomp.to_i
    puts "\nJogador 1, escolha uma pilha do tabuleiro"
    coluna = gets.chomp.to_i

    teste[linha][coluna] = 'X'

    show(teste)
    
    if teste[0][0] == 'X' and teste[0][1] == 'X' and teste[0][2] == 'X'
        final_do_jogo = true
    elsif teste[1][0] == 'X' and teste[1][1] == 'X' and teste[1][2] == 'X'
            final_do_jogo = true
        elsif teste[2][0] == 'X' and teste[2][1] == 'X' and teste[2][2] == 'X'
            final_do_jogo = true
        elsif teste[0][0] == 'X' and teste[1][1] == 'X' and teste[2][2] == 'X'
            final_do_jogo = true
        elsif teste[2][0] == 'X' and teste[1][1] == 'X' and teste[0][2] == 'X'
            final_do_jogo = true
        end
    
        if final_do_jogo == true
            puts "Você ganhou!"
        end

# ----------------------------------------------------------------------- INIMIGO
puts "\nJogador 2, escolha uma linha do tabuleiro"
linha = rand(3)
puts "\nJogador 2, escolha uma pilha do tabuleiro"
coluna = rand(3)
        
            teste[linha][coluna] = 'O'
        
            show(teste)
            
            if teste[0][0] == 'O' and teste[0][1] == 'O' and teste[0][2] == 'O'
                final_do_jogo = false
            elsif teste[1][0] == 'O' and teste[1][1] == 'O' and teste[1][2] == 'O'
                    final_do_jogo = false
                elsif teste[2][0] == 'O' and teste[2][1] == 'O' and teste[2][2] == 'O'
                    final_do_jogo = false
                elsif teste[0][0] == 'O' and teste[1][1] == 'O' and teste[2][2] == 'O'
                    final_do_jogo = false
                elsif teste[2][0] == 'O' and teste[1][1] == 'O' and teste[0][2] == 'O'
                    final_do_jogo = false
                end
            end