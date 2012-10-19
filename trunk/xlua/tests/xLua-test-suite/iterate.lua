
function iterate(t)
	local i = 0
	local n = table.getn(t)
	return function()
		i = i + 1
		if(i <= n) then return t[i] end
	end
end

arr = {2, 3, 4}

func = iterate(arr)

for line in iterate(arr) do
	print(line)
end
