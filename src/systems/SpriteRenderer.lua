--[[
    SPRITE RENDERER SYSTEM CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

SpriteRenderer = Class{__includes = System}

function SpriteRenderer:init()
    System.init(self, { 'transform', 'sprite' })
end

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