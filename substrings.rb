
def substring(word, arr, ans)
	arr.each do |e|
		if word.upcase.include? e.upcase
			ans[e] += 1
		end
	end
	ans
end
def substrings(str, arr)
	ans = Hash.new
	arr.each do |w|
		ans[w]=0
	end
	puts ans
	a = str.split(" ")
	a.each do |word|
		ans = substring(word, arr, ans)
	end
	ans.each do |k,v|
		if v == 0
			ans.delete(k)
		end
	end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
