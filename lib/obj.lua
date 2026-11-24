local pool = require("lib.pool")
local deep = require("lib.deep")
local hc = require("lib.hardoncollider")

local 深度 = deep:new()

local obj = class {
    init = function(self, 位置, 旋转, 缩放, 碰撞体)
        碰撞体 = 碰撞体 or {}
        self.位置 = 位置 or vector(0, 0)
        self.旋转 = 旋转 or 0 --用角度计算旋转
        self.缩放 = 缩放 or 1
        self.类型 = 碰撞体.类型 --碰撞体类型, nil就是无碰撞
        if self.类型 == "方形" then
            self.宽高 = 碰撞体.宽高 or vector(0, 0)
        elseif self.类型 == "圆形" then
            self.半径 = 碰撞体.半径 or 0
        end
    end,
    draw = function(self, 图层, 纹理)
        深度:queue(图层, function()
            love.graphics.draw(纹理, self.位置.x, self.位置.y, math.rad(self.旋转), self.缩放, self.缩放, 纹理:getWidth() / 2,
            纹理:getHeight() / 2)
        end)
    end,
    碰撞 = function(self)
    end,
    free = function(self)
        角色池:free(self)
    end,
}

角色池 = pool.create(obj, 16)

function obj:new(id, 位置, 旋转, 缩放, 碰撞体)
    local 角色 = 角色池:obtain()
    角色:init(位置, 旋转, 缩放, 碰撞体)
    return 角色
end

function obj:drawAll()
    深度:draw()
end

return obj
