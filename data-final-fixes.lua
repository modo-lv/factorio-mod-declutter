local techs = {}
local recipes = {}

-- Add Krastorio 2
if settings.startup["declutter-hide-k2-containers"].value then
  local k2 = require("mods/krastorio2.lua")
  k2.process(techs, recipes)
end

-- Add manual
local self = require("mods/declutter.lua")
self.process(techs, recipes)

-- Process
local types = { technology = techs, recipe = recipes }
for type, list in pairs(types) do
  for _, name in ipairs(list) do
    local prototype = data.raw[type][name]
    if prototype ~= nil then
      prototype.hidden = true
    end
  end
end
