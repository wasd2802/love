local class = require("模块.class")
local obj = class{
    位置 = { x = 0, y = 0},
    旋转 = 0,
    缩放 = 1,

    碰撞 = function(self)
    end,
}

return obj