
--Days and loops.

days = { "sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday" }
for i, line in ipairs(days) do
	print(line)
end

new = { x = 0, y = 1 }
print(new.x, new.y)

new.x, new.y = new.y, new.x
print(new.x, new.y)
