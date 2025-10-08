local SILI = {}
SILI.__index = SILI

function SILI.new(size, tileSize, toIsometric) --size of map, size of each tile, conversion used for moving from screen to iso
    local self = setmetatable({}, SILI)
    self.lights = {}
    return self
end

function SILI:addLight(x, y, radius, color)
    local light = {x=x, y=y, radius=radius, color=color}
    table.insert(self.lights, light)
    return light
end

function SILI:draw()
    
end

return SILI
