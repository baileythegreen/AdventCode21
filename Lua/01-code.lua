input_file = "../Inputs/01-input.txt"

io.input(input_file)

local current = math.tointeger(io.read("l"))
--io.write(current, "\n")

local jumps = 0
for line in io.lines() do
    local next = math.tointeger(line)
    if current < next then jumps = jumps + 1 end
    current = next
end
io.write(jumps, "\n")

io.input(input_file)
lines = {}

for line in io.lines() do
    lines[#lines + 1] = math.tointeger(line)
end

increases = 0
for i = 1, #lines - 3 do
    old = lines[i] + lines[i+1] + lines[i+2]
    new = lines[i+1] + lines[i+2] + lines[i+3]
    if old < new then increases = increases + 1 end
end

io.write(increases, "\n")
