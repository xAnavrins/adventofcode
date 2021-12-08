local values = {}

for line in input do
	line = split(line, "|")
	local inputs = {}
	local outputs = {}
	line[1]:gsub("(%w+)", function(p) table.insert(inputs, p) end)
	line[2]:gsub("(%w+)", function(p) table.insert(outputs, p) end)
	table.insert(values, {inputs, outputs})
end

local easySegments = {
	[2] = 1, --
	[4] = 4, --
	[3] = 7, --
	[7] = 8, --
}

local j = 0
for _, value in ipairs(values) do
	for _, signal in ipairs(value[2]) do
		j = j + (easySegments[#signal] and 1 or 0)
	end
end

return j
