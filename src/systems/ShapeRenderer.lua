--[[
    SHAPE RENDERER SYSTEM CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

ShapeRenderer = Class{__includes = System}

function ShapeRenderer:init()
    System.init(self, { 'transform', 'shape' })
end

function ShapeRenderer:draw(entity)
    local transform = entity:getComponent('transform')
    local shape = entity:getComponent('shape')
    
    love.graphics.setColor(shape.color)
    if shape.type == 'rect' then
        love.graphics.rectangle(shape.filled and 'fill' or 'line', transform.x, transform.y, transform.width, transform.height, shape.radius)
    else
        assert(false, string.format('ShapeRendeder does not support the [%s] type', shape.type))
    end
end