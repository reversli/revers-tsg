--[[
-- example:
local combinefiles = loadstring(game:HttpGet("https://raw.githubusercontent.com/joeengo/exploiting/main/combine.lua",true))
combinefiles(
    "main.lua",
    "game.lua",
    table.unpack(listfiles("script/modules"))
)
]]

writefile("combineOutput.lua", "")

local files = type(...)=="table" and ... or {...}
for _, file in next, files do
    local content = isfile(file) and readfile(file) or "-- Unable to find"..file.."!"
    appendfile("combineOutput.lua", content.."\n")
end
