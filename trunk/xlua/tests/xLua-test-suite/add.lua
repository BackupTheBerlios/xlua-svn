
function add(arr)
	local sum = 0
	for i, val in ipairs(arr) do
		sum = sum + val
	end
	return sum
end

count = 0

function inc(n)
	n = n or 1
	count = count + n
	return count
end

arr = {2, 3, 5}
print(add(arr))

print("New result:", inc(10))

