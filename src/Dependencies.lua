--[[
    DEPENDENCIES
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

require 'src/constants'
require 'src/Util'

Push                = require 'lib/push'
Timer               = require 'lib/knife/timer'
Event               = require 'lib/knife/event'

Game                = require 'src/Game'
Manager       = require 'src/Manager'
System              = require 'src/System'
Entity              = require 'src/Entity'
Component           = require 'src/Component'

ShapeRenderer       = require 'src/systems/ShapeRenderer'
SpriteRenderer      = require 'src/systems/SpriteRenderer'
PhysicsEngine       = require 'src/systems/PhysicsEngine'
PlayerController    = require 'src/systems/PlayerController'

Transform           = require 'src/components/Transform'
Physics             = require 'src/components/Physics'
Shape               = require 'src/components/Shape'
Script              = require 'src/components/Script'
Player              = require 'src/components/Player'
Sprite              = require 'src/components/Sprite'


gTextures = {
    ['creatures'] = love.graphics.newImage('assets/graphics/oryx_creatures.png')
}

gFrames = {
    ['creatures'] = GenerateQuads(gTextures['creatures'], 24, 24)
}