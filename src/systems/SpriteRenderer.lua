--[[
    SPRITE RENDERER SYSTEM PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function()
    local SpriteRenderer = System { 'transform', 'sprite' }

    function SpriteRenderer:draw(entity)
        local transform = entity:getComponent('transform')
        local sprite = entity:getComponent('sprite')
        
        love.graphics.draw(
            gTextures[sprite.texture],
            gFrames[sprite.texture][sprite.frame],
            transform.x, transform.y,
            transform.rotation, transform.scaleX, transform.scaleY,
            transform.offsetX, transform.offsetY
        )
    end

    return SpriteRenderer
end