--[[
    SHAPE COMPONENT CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

Shape = Class{__includes = Component}

function Shape:init(data)
    assert(data.type, 'Shape:init -> type must be specified')
    Component.init(self, 'shape')
    self.type = data.type
    self.color = data.color or { 1, 1, 1 ,1 }
    self.filled = data.filled or false
    self.radius = data.radius or 0
end