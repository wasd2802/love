local class = require("模块.class")
local obj = class {
    init = function(self, x, y, 旋转, 缩放)
        self.位置 = { x = x or 0, y = y or 0 }
        self.旋转 = 旋转 or 0
        self.缩放 = 缩放 or 1
    end,

    draw = function(self, 纹理)
        love.graphics.draw(纹理, self.位置.x, self.位置.y, self.旋转, self.缩放, self.缩放, 纹理:getHeight() / 2, 纹理:getWidth() / 2)
    end,

    设置位置 = function(self, x, y)
        self.位置.x = x or self.位置.x
        self.位置.y = y or self.位置.y
    end,

    碰撞 = function(self)
    end,
}

return obj
