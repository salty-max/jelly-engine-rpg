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
    Transform.rotation = data.rotation or 0
    Transform.scaleX = data.scaleX or 1
    Transform.scaleY = data.scaleY or 1

    return Transform
end