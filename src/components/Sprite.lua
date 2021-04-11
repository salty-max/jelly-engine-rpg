--[[
    SPRITE COMPONENT PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

Sprite = Class{__includes = Component}

function Sprite:init(data)
    Component.init(self, 'sprite')
    self.texture = data.texture
    self.frame = data.frame
end