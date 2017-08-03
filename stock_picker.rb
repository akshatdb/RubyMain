def stock_picker(arr)
	n = arr.length
	i = n-1
	j = n-1
	maxd = -9999
	while (i >= 0)
		j = i - 1
		while(j >= 0)
			d = arr[i]-arr[j]
			if (d > maxd)
				maxd = d
				fi = i
				fj = j
			end
			j-=1
		end
		i-=1
	end
	a = [fj,fi]
end

print stock_picker([17,3,6,9,15,8,6,1,10])