--[[
    SHAPE COMPONENT PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function(data)
    local Shape = Component('shape')

    Shape.type = data.type
    Shape.color = data.color or { 1, 1, 1 ,1 }
    Shape.fill = data.fill or 'line'

    return Shape
end