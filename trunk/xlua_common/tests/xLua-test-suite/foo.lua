
function foo0()
	return
end

function foo1()
	local a = 10
	return a
end

function foo2()
	local a = 10
	local b = 20
	return a, b
end

const = {foo2()}
for i, val in ipairs(const) do
	print(val)
end

print(foo2(), "")

str = "hello"
print(string.find(str, "ll"))
