--[[
    TRANSFORM COMPONENT PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function(data)
    local Transform = Component('transform')

    Transform.x = data.x
    Transform.y = data.y
    Transform.width = data.width
    Transform.height = data.height
    Transform.rotation = data.rotation or 0
    Transform.scaleX = data.scaleX or 1
    Transform.scaleY = data.scaleY or 1

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

    return Transform
end