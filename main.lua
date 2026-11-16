class = require("模块.class")
deep = require("模块.deep")
camera = require("模块.camera")
object = require("模块.物体")

function love.load()
    瓦片 = love.graphics.newImage("资源/图片/瓦片.png")

    相机 = camera.new()
    深度 = deep:new()
    物体 = object()

    鼠标位置x, 鼠标位置y = nil, nil
end

function love.update(dt)
    物体:设置位置(鼠标位置x, 鼠标位置y)
end

function love.draw()
    love.graphics.print(love.timer.getFPS(), 10, 10)

    鼠标位置x, 鼠标位置y = 相机:mousePosition()
    相机:attach()
    物体:draw(瓦片)
    相机:detach()
end
