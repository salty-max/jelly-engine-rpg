--[[
    SCENE MANAGER CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

SceneManager = Class {}

function SceneManager:init(scenes)
    self.empty = {
        render = function() end,
        update = function() end,
        enter = function() end,
        exit = function() end
    }
    self.scenes = scenes or {} -- [name] -> [function that returns state]
    self.current = self.empty
end

function SceneManager:change(sceneId, enterParams)
    assert(self.scenes[sceneId]) -- state must exist!
    self.current:exit()
    self.current = self.scenes[sceneId]()
    self.current:enter(enterParams)
end

function SceneManager:update(dt)
    self.current:update(dt)
end

function SceneManager:draw()
    self.current:draw()
end