--[[
    MAIN PROGRAM
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

io.stdout:setvbuf("no")

love.graphics.setDefaultFilter('nearest', 'nearest')
require 'src/Dependencies'

function love.load()
    love.window.setTitle(TITLE)

    math.randomseed(os.time())

    Push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        vsync = true,
        resizable = true,
        fullscreen = false
    })

    Game = Game()
    Game:init()

    love.keyboard.keysPressed = {}
end

function love.resize(w, h)
    Push:resize(w, h)
end

function love.keypressed(key)
    love.keyboard.keysPressed[key] = true
end

function love.keyboard.wasPressed(key)
    return love.keyboard.keysPressed[key]
end

function love.update(dt)
    Game:update(dt)
    love.keyboard.keysPressed = {}
end

function love.draw()
    Push:start()
    Game:draw()
    Push:finish()
end