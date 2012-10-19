
--Store in array, print as well.

arr = {}

for i = 1, 5 do
	arr[i] = io.read()
end

i = 1;
while i ~= 6 do
	print(arr[i])
	i = i + 1
end
