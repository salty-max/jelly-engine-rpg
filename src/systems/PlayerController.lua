--[[
    PLAYER CONTROLLER SYSTEM PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function()
    local PlayerController = System { 'transform', 'physics' }
    
    function PlayerController:update(entity, dt)
        local physics = entity:getComponent 'physics'
        local transform = entity:getComponent 'transform'

        if love.keyboard.isDown('left') then
            physics.dx = physics.dx - physics.speed * dt
            transform.scaleX = 1
        elseif love.keyboard.isDown('right') then
            physics.dx = physics.dx + physics.speed * dt
            transform.scaleX = -1
        end

        if love.keyboard.isDown('up') then
            physics.dy = physics.dy - physics.speed * dt
        elseif love.keyboard.isDown('down') then
            physics.dy = physics.dy + physics.speed * dt
        end
    end

    return PlayerController
end