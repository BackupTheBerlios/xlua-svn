
--an ipairs execution.

arr = {}
for i = 1, 5 do
	arr[i] = io.read()
end

for i, line in ipairs(arr) do
	print(line)
end
