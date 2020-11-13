function love.conf(t)
    t.window.title = "Simple Clicking Game"
    t.window.icon = "images/worsticonever.png"
    t.window.minwidth = 700
    t.window.minheight = 500
    t.window.resizable = true
    t.modules.joystick = false
    t.modules.keyboard = false
    t.modules.physics = false
    t.modules.audio = false
    t.modules.sound = false
    t.modules.system = false
    t.modules.thread = false
    t.modules.touch = false
end