
function counter()
	local i = 0
	return function()
		i = i + 1;
		return i
	end
end

res1 = counter()
res2 = counter()

print(res1())	
--print(res2())	
print(res1())
