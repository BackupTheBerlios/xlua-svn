
function find (instr, str)
	s, e = string.find(instr, str)
	if (s == nil) then return nil end
	return s, e
end

print(find("Hello", "el"))
