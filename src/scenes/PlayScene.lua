--[[
    PLAY SCENE CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

PlayScene = Class{__includes = Scene}

function PlayScene:init()
    self.manager = Manager()
    self.manager:assemble {
        SpriteRenderer(),
        PhysicsEngine(),
        PlayerController(),
    }

    local player = self.manager:createEntity {
        Transform { x = 8, y = 8, width = 24, height = 24 },
        Sprite { texture = 'creatures', frame = 3 },
        Physics { speed = PLAYER_WALK_SPEED, friction = 0.04 },
        Player {},
    }
end

function PlayScene:update(dt)
    self.manager:update(dt)
end

function PlayScene:draw()
    self.manager:draw()
end