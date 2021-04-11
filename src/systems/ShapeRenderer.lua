--[[
    SHAPE RENDERER SYSTEM PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function(entityManager)
    local ShapeRenderer = entityManager:createSystem { 'transform', 'shape' }

    function ShapeRenderer:draw(entity)
        local transform = entity:getComponent('transform')
        local shape = entity:getComponent('shape')
        
        love.graphics.setColor(shape.color)
        if shape.type == 'rect' then
            love.graphics.rectangle(shape.fill, transform.x, transform.y, transform.width, transform.height)
        else
            assert(false, string.format('ShapeRendeder does not support the [%s] type', shape.type))
        end
    end

    return ShapeRenderer
end