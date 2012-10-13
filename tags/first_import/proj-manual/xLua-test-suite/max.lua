
function max (arr)
	local max = arr[1]
	local imax = 1;
	for i, val in ipairs(arr) do
		if (arr[i] > max) then
			max = arr[i]
			imax = i
		end
	end
	return max, imax
end


print(max({2, 100, 3, 210, 30}))

