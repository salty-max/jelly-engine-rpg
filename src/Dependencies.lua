local ShapeRenderer = require "src.systems.ShapeRenderer"
--[[
    DEPENDENCIES
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

require 'src/constants'
require 'src/Util'

Push = require 'lib/push'
Timer = require 'lib/knife/timer'
Event = require 'lib/knife/event'

Game = require 'src/Game'
EntityManager = require 'src/EntityManager'
System = require 'src/System'
Entity = require 'src/Entity'
Component = require 'src/Component'

Transform = require 'src/components/Transform'
Shape = require 'src/components/Shape'
Script = require 'src/components/Script'

ShapeRenderer = require 'src/systems/ShapeRenderer'