# caesar_cipher.rb

class Caesar_cipher1

	
	def conversion (a, shiftFactor)

	  puts "Input: #{a}"

	  b = ""

	  a.each_byte do |c|
	    	
	    if ((c < 91 and c > 64) or ((c < 123 and c > 96)))	
	    	
	    	c = c - shiftFactor;	
	    	
	    	if (c < 65)
	    		c = c + 26
	    	end

	    	if (c < 97 and c > 90)
	    		c = c + 26
	    	end


		end

	  b = b + c.chr

	  end

	  puts "Ceaser Cipher: " +b

	end


end