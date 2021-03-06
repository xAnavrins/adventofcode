local pos = 0
local depth = 0
local aim = 0

local command = {
	forward = function(x)
		pos = pos + x
		depth = depth + (x * aim)
	end,
	down = function(x)
		aim = aim + x
	end,
	up = function(x)
		aim = aim - x
	end,
}

for line in input do
	local action, amount = line:gmatch("(%a+)%s(%d+)")()
	if command[action] then command[action](amount) end
end

return pos * depth
