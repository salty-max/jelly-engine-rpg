--[[
    PHYSICS COMPONENT CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

Physics = Class{__includes = Component}

function Physics:init(data)
    Component.init(self, 'physics')

    self.dx = data.dx or 0
    self.dy = data.dy or 0
    self.speed = data.speed or 0
    self.friction = data.friction or 0.2
end