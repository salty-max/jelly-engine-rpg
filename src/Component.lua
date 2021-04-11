--[[
    COMPONENT PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function(id)
    assert(type(id) == 'string', 'Component id must be a string')
    
    local Component = {
        __id = id
    }

    return Component
end