--[[
    TRANSFORM COMPONENT CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

Transform = Class{__includes = Component}

function Transform:init(data)
    Component.init(self, 'transform')
    self.x = data.x
    self.y = data.y
    self.width = data.width
    self.height = data.height
    self.rotation = data.rotation or 0
    self.scaleX = data.scaleX or 1
    self.scaleY = data.scaleY or 1
    self.offsetX = self.width * 0.5
    self.offsetY = self.height * 0.5
end

function Transform:center()
    return self.x + self.width * 0.5
end

function Transform:contains(other)
    assert(type(other) == 'table')
    assert(other.__id == 'transform')

    return self.x + self.width > other.x and
        self.x < other.x + other.width and
        self.y + self.height > other.y and
        self.y < other.x + other.height
end