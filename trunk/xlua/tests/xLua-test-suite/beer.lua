
-- the beer song

function decide (i)
	if (i == 0) then return "no more bottles of beer"
	elseif (i == 1) then return "1 bottle of beer"
	else return i .. " bottles of beer"
        end
end

for i = 99, 1, -1 do
	io.write (decide (i) .. " on the wall, ", decide (i), ",\n")
	io.write ("take one down, pass it around,\n")
	io.write (decide (i - 1), " on the wall.\n\n")
end
