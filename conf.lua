function love.conf(t)
    t.identity = "love"                 -- 游戏存档目录标识，发布前建议改成项目名称。
    t.appendidentity = false            -- 是否将标识附加到存档目录路径。
    t.version = "12.0"                  -- 本项目使用的 LÖVE 版本。
    t.console = false                   -- 是否显示控制台（仅 Windows）。
    t.externalstorage = false           -- Android 上是否将存档写入外部存储。
    t.trackpadtouch = false             -- 是否将触控板操作模拟为触摸事件。

    t.window.title = "Game"             -- 窗口标题；优先于 t.title。
    t.window.icon = nil                 -- 窗口图标文件路径；nil 表示使用默认图标。
    t.window.width = 800                -- 窗口初始宽度（像素）。
    t.window.height = 600               -- 窗口初始高度（像素）。
    t.window.x = nil                    -- 窗口初始横坐标；nil 表示由系统决定。
    t.window.y = nil                    -- 窗口初始纵坐标；nil 表示由系统决定。
    t.window.minwidth = 1               -- 窗口最小宽度（像素）。
    t.window.minheight = 1              -- 窗口最小高度（像素）。
    t.window.fullscreen = false         -- 是否以全屏模式启动。
    t.window.fullscreentype = "desktop" -- 全屏类型："desktop" 或 "exclusive"。
    t.window.displayindex = 1           -- 使用的显示器编号，从 1 开始。
    t.window.vsync = 1                  -- 垂直同步：0 关闭，1 开启，或使用其他支持的同步模式。
    t.window.msaa = 0                   -- 多重采样抗锯齿级别；0 表示关闭。
    t.window.depth = nil                -- 深度缓冲位数；nil 表示使用默认值。
    t.window.stencil = nil              -- 模板缓冲位数；nil 表示使用默认值。
    t.window.borderless = false         -- 是否隐藏窗口边框。
    t.window.resizable = false          -- 是否允许调整窗口大小。
    t.window.centered = true            -- 是否将窗口居中显示。
    t.window.usedpiscale = true         -- 高 DPI 屏幕上是否启用自动 DPI 缩放。

    t.audio.mixwithsystem = true        -- 移动设备上是否允许游戏音频与系统音频同时播放。
    t.audio.mic = false                 -- Android 上是否启用麦克风录音。

    t.graphics.gammacorrect = false     -- 是否启用伽马校正渲染。
    t.graphics.lowpower = false         -- 是否优先使用低功耗图形模式。
    t.graphics.renderers = nil          -- 可选：指定优先使用的图形渲染器列表；nil 表示使用默认列表。
    t.graphics.excluderenderers = nil   -- 可选：指定要排除的图形渲染器列表。

    t.modules.audio = true              -- 是否加载音频播放模块。
    t.modules.data = true               -- 是否加载数据序列化模块。
    t.modules.event = true              -- 是否加载事件处理模块。
    t.modules.font = true               -- 是否加载字体模块。
    t.modules.graphics = true           -- 是否加载图形绘制模块。
    t.modules.image = true              -- 是否加载图像读取模块。
    t.modules.joystick = true           -- 是否加载手柄模块。
    t.modules.keyboard = true           -- 是否加载键盘输入模块。
    t.modules.math = true               -- 是否加载数学工具模块。
    t.modules.mouse = true              -- 是否加载鼠标输入模块。
    t.modules.physics = true            -- 是否加载 Box2D 物理模块。
    t.modules.sensor = true             -- 是否加载设备传感器模块。
    t.modules.sound = true              -- 是否加载音频解码模块。
    t.modules.system = true             -- 是否加载系统信息模块。
    t.modules.thread = true             -- 是否加载线程模块。
    t.modules.timer = true              -- 是否加载计时器模块。
    t.modules.touch = true              -- 是否加载触摸输入模块。
    t.modules.video = true              -- 是否加载视频播放模块。
    t.modules.window = true             -- 是否加载窗口管理模块。
end
