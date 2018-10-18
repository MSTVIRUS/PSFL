--[[
    This is the PS or Professor Script function library. I've taken the liberty of shortening some the functions that should've been shortened a while ago
]]--

--Meta Class
PS = {}

function PS:new(p)
    p = p or {}
    setmetatable(p, self)
    self.__index = self
    return p
end

function PS:think(identifier, func)
    hook.Add("Think", identifier, func)
end

function PS:paint(identifier, func)
    hook.Add("HUDPaint", identifier, func)
end

function PS:screenspace(identifier, func)
    hook.Add("RenderScreenspaceEffects", identifier, func)
end

ps = PS:new(nil)