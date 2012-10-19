
network = {
	{ name = "alex", ip = "192.168.0.1" },
	{ name = "pete", ip = "192.168.0.2" },
	{ name = "cole", ip = "192.168.0.3" },
	{ name = "carl", ip = "192.168.0.4" }
}

--for i in ipairs(network) do
--	print(network[i].name, network[i].ip)
--end

--table.sort(network, function(a, b) return(a.ip < b.ip) end)

--for i in ipairs(network) do
--	print(network[i].name, network[i].ip)
--end

--for i in ipairs(network) do
--	print(network[i].name, network[i].ip);
--end

table.sort(network, function(x, y) return(x.name < y.name) end)

for i in ipairs(network) do
	print(network[i].name)
end
