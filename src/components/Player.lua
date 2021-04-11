--[[
    PLAYER COMPONENT CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

Player = Class{__includes = Component}

function Player:init(data)
    Component.init(self, 'player')
end