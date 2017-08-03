def ciph(arr,n)
	ret = ""
	arr.each do |word|
		r = ""
		word.scan(/./) do |w|
			t = w.ord
			if w.ord >= "a".ord && w.ord <= "z".ord
				c = 97
				t =  (t-97 + n)%26
			elsif w.ord >= "A".ord && w.ord <= "Z".ord
				c = 65
				t =  (t-65 + n)%26
			else 
				c = 0
			end
			puts c
			puts t
			puts w
			c = (c+t).chr
			r<<c
		end
		ret<<r
		ret<<" "
	end
	ret		
end

def caesar_cipher(str,n)
	ciph(str.split(" "),n)
end

puts caesar_cipher("What a string!", 5)
