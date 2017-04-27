
class TicTacToe


    def initialize

		puts "Player 1 Enter your name: "
		playerName1 = gets.chomp
		while playerName1.empty? do
			puts "\nEmpty name for Player 1; Re-enter: "
			playerName1 = gets.chomp
		end

		puts "\nPlayer 2 Enter your name: "
		playerName2 = gets.chomp
		while playerName2.empty? do
			puts "\nEmpty name for Player 2; Re-enter: "
			playerName2 = gets.chomp
		end

		puts "\nOkay! Lets play!"
		puts "#{playerName1} is O, #{playerName2} is X"


		boolTest = false
		player1 = true
		result = [0, 0, 0, 0, 0, 0, 0, 0, 0]

		disp(result)
		while (boolTest == false) 
		    
			if (player1)
				puts "\n#{playerName1}, your chance? - "
			else
				puts "\n#{playerName2}, your chance? - "
			end

			loc = gets.chomp.to_i

			if(loc == nil or loc == 0) 
				puts "Input Error! Re-enter -"
				next
			end

			if result[loc - 1] > 0
				puts "Choose some other spot! Re-enter -"
				next
			end				

			if (player1)
				result[loc - 1] = 1
			else
				result[loc - 1] = 2
			end	


			boolTest = checkForWin(result, playerName1, playerName2)

			player1 = !player1

		end
	end

def checkForWin(result, playerName1, playerName2)


	disp(result)

	winner = 0
	for i in 0..2
	
		if (result[3*i] == result[3*i + 1] and result[3*i + 1] == result[3*i + 2] and result[3*i] > 0)
			winner = result[3*i]
			
		end

		if (result[i] == result[i + 3] and result[i + 3] == result[i + 6] and result[i] > 0)
			winner = result[i]
		end

		if (i > 0)
			if (result[4 - 2*i] == result[4] and result[4] == result[4 + 2*i] and result[4] > 0)
				winner = result[4]

			end
		end

	end

		if winner == 1
			puts "Congrats #{playerName1}, you won !"
			return true
		elsif winner == 2
			puts "Congrats #{playerName2}, you won !"
			return true
		end
		


	return false	

end

def disp(result)

dispArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

count = 0;
result.each do |x|
	if x == 1
		dispArray[count] = "O"
	end

	if x == 2
		dispArray[count] = "X"
	end

	count = count + 1;

end

puts "\n " + dispArray[0] + " | " + dispArray[1] + " | " + dispArray[2] + " "
puts "___________"
puts " " + dispArray[3] + " | " + dispArray[4] + " | " + dispArray[5] + " "
puts "___________"
puts " " + dispArray[6] + " | " + dispArray[7] + " | " + dispArray[8] + " \n"


end

end


TicTacToe.new



