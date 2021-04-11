--[[
    TRANSFORM COMPONENT PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function(data)
    local Transform = Component('transform')

    Transform.x = data.x
    Transform.y = data.y
    Transform.width = data.width
    Transform.height = data.height

    return Transform
end