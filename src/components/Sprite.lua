--[[
    SPRITE COMPONENT PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function(data)
    local Sprite = Component('sprite')

    Sprite.texture = data.texture
    Sprite.frame = data.frame

    return Sprite
end