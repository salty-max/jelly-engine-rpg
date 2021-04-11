--[[
    SCRIPT COMPONENT CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

Script = Class{__includes = Component}

function Script:init(data)
    Component.init(self, 'script')
    self.fn = data.fn
end