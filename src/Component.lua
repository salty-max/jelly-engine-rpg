--[[
    COMPONENT CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

Component = Class{}

function Component:init(id)
    assert(type(id) == 'string', 'Component id must be a string')
    self.id = id
end