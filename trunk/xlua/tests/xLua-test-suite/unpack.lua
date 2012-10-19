
arr = {10, 20, 30}

--a, b, c = unpack(arr)
--print(a, b, c)

--function my_unpack(arr)
--	for i, var in ipairs(arr) do

function my_unpack(arr, i)
	i = i or 1
	if (arr[i] ~= nil) then
		return arr[i], my_unpack(arr, i + 1)
	end
end

print(my_unpack(arr, 0))
