
function append(...)
	for v, i in ipairs(arg) do
		print(tostring(i))
	end
end

arr = {1, 2, 3, 3}

append(arr)

