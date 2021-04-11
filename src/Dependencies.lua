--[[
    DEPENDENCIES
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

require 'src/constants'
require 'src/Util'

Class = require 'lib/class'
Push = require 'lib/push'
Timer = require 'lib/knife/timer'
Event = require 'lib/knife/event'

require 'src/Scene'
require 'src/SceneManager'
require 'src/Manager'
require 'src/System'
require 'src/Entity'
require 'src/Component'

require 'src/scenes/PlayScene'

require 'src/systems/ShapeRenderer'
require 'src/systems/SpriteRenderer'
require 'src/systems/PhysicsEngine'
require 'src/systems/PlayerController'

require 'src/components/Transform'
require 'src/components/Physics'
require 'src/components/Shape'
require 'src/components/Script'
require 'src/components/Player'
require 'src/components/Sprite'


gTextures = {
    ['creatures'] = love.graphics.newImage('assets/graphics/oryx_creatures.png')
}

gFrames = {
    ['creatures'] = GenerateQuads(gTextures['creatures'], 24, 24)
}