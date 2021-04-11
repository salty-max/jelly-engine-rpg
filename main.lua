--[[
    MAIN PROGRAM
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

io.stdout:setvbuf("no")
require 'src/Dependencies'

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.window.setTitle(TITLE)

    math.randomseed(os.time())

    Push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        vsync = true,
        resizable = true,
        fullscreen = false
    })

    Game = Game()
    Manager = Manager()

    local player = Manager:createEntity {
        {Transform, { x = 8, y = 8, width = 8, height = 8 }}
    }

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
    love.keyboard.keysPressed = {}
end

function love.draw()
    Push:start()
    love.graphics.rectangle('fill', 0, 0, 32, 32)
    Push:finish()
end