require_relative 'player.rb'
require_relative 'board.rb'


class Game
    

end

puts "TIC_TAC_TOE"

puts "Enter size of maze :"
size = gets.to_i
board1 = Board.new(size)

board1.makeboard



puts "Enter first player name :"
num1=gets.chomp
puts "Enter first players symbol :"
symb1=gets.chomp
player1 = Player.new(num1,symb1)

puts "Enter second player name :"
num2=gets.chomp
puts "Enter second players symbol :"
symb2=gets.chomp
 
while(symb1 == symb2)
	puts "Enter a different symbol"
	symb2=gets
end
player2 = Player.new(num2,symb2)


while true
	        print "*********",player1.name,"'s turn*********\n"
			puts "Enter x position :"
			x=gets.chomp.to_i
			puts "Enter y position :"
			y=gets.chomp.to_i
			if (board1.issafe(x,y))
				board1.make(x,y,player1.symbol)
				board1.makeboard
			else
				puts "Enter new positions! Already occupied !"
				next
			end
			#puts board1.checkwin
			if(board1.checkwin(player1.symbol))
				print "Hurray! ",player1.name , " wins!\n"
				break
			end
			print "*********",player2.name,"'s turn*********\n"
			puts "Enter x position :"
			x=gets.chomp.to_i
			puts "Enter y position :"
			y=gets.chomp.to_i
			if (board1.issafe(x,y))
				board1.make(x,y,player2.symbol)
				board1.makeboard
			else
				puts "Enter new positions! Already occupied !"
				next
			end
			if(board1.checkwin(player2.symbol))
				print "Hurray! ",player2.name , " wins!\n"
				break
			end

		

end