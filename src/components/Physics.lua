--[[
    PHYSICS COMPONENT PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function(data)
    local Physics = Component('physics')

    Physics.dx = data.dx
    Physics.dy = data.dy
    Physics.friction = 0.2

    return Physics
end