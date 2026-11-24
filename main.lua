vector = require("lib.brinevector")
camera = require("lib.camera")
class = require("lib.class")
瓦片 = require("lib.瓦片")
obj = require("lib.obj")

local 地图 = {
    瓦片 = {
        {
            纹理 = "data/图片/瓦片.png",
            位置 = vector(0, 0),
            旋转 = 0,
            大小 = 1,
            碰撞 = {
                类型 = "方形",
                宽高 = vector(64, 64),
            }
        },
        {
            纹理 = "data/图片/球.png",
            位置 = vector(0, 0),
            旋转 = 0,
            大小 = 1,
            碰撞 = {
                类型 = "圆形",
                半径 = 32,
            }
        }
    },
    地图宽高 = vector(10, 3),
    瓦片宽高 = vector(64, 64),
    地图 = {
        { 1, 2, 1, 1, 0, 0, 0, 1, 1, 2 },
        { 1, 1, 1, 1, 1, 0, 1, 1, 2, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 2, 1, 1 }
    }
}

function love.load()
    角色纹理 = love.graphics.newImage("data/图片/球.png")
    角色 = obj:new(1, vector(0, 0), 0, 1, { 类型 = "方形", 宽高 = vector(64, 64) })
end

function love.update(dt)
    角色.位置 = vector(love.mouse.getPosition())
end

function love.draw()
    角色:draw(1, 角色纹理)
    obj:drawAll()

    love.graphics.print(love.timer.getFPS(), 20, 20)
end

function love.keyboard.isDown(key)
    print(key)
    if key == "A" then
        角色:free()
    end
end