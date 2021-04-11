
--[[
    UTILITY FUNCTIONS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

function GenerateQuads(atlas, tilewidth, tileheight)
    local sheet = {}
    local sheetwidth = atlas:getWidth() / tilewidth
    local sheetheight = atlas:getHeight() / tileheight
    local sheetcounter = 1
    local x = 0
    local y = 0

    for row = 1, sheetheight do
        for col = 1, sheetwidth do
            local quad = love.graphics.newQuad(x, y, tilewidth, tileheight, atlas:getDimensions())
            table.insert(sheet, quad)
            sheetcounter = sheetcounter + 1

            x = x + tilewidth
        end

        y = y + tileheight
    end

    return sheet
end

function uuid()
    local seed={'e','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'}
    local tb={}
    for i=1,32 do
        table.insert(tb,seed[math.random(1,16)])
    end
    local sid=table.concat(tb)
    return string.format('%s-%s-%s-%s-%s',
        string.sub(sid,1,8),
        string.sub(sid,9,12),
        string.sub(sid,13,16),
        string.sub(sid,17,20),
        string.sub(sid,21,32)
    )
end

function dump(t)
    if type(t) == 'table' then
        local s = '{ '
        for k,v in pairs(t) do
            if type(k) ~= 'number' then k = '"' ..k.. '"' end
            s = s .. '['..k..'] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        return tostring(t)
    end
end
