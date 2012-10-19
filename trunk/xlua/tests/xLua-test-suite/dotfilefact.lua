
--Method to compute the factorial.

function fact(num)
	if num == 0 then return 1
	else return num * fact(num - 1)
	end
end
print(fact(3))
