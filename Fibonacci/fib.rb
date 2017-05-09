# Fibonacci Series

class Fibonacci

	
	def series (counter, initArray = [0,1])

		puts initArray[0].to_s
		if (counter - 1 > 0) 
			series(counter - 1, [initArray[1], initArray[0]+ initArray[1]]	)
		end

	end


end