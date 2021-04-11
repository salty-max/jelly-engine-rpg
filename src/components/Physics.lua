--[[
    PHYSICS COMPONENT PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function(data)
    local Physics = Component('physics')

    Physics.dx = data.dx or 0
    Physics.dy = data.dy or 0
    Physics.speed = data.speed or 0
    Physics.friction = data.friction or 0.2

    return Physics
end