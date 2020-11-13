function love.load()
    screenWidth, screenHeight = love.window.getDesktopDimensions(1)
    love.window.setMode(screenWidth-350, screenHeight-250, {
        centered = true,
        display = 1
    })
    
    windowWidth = love.graphics.getWidth()
    windowHeight = love.graphics.getHeight()
    
    button = {}
    button.size = 30
    button.x = math.random(button.size, windowWidth - button.size)
    button.y = math.random(button.size, windowHeight - button.size)

    score = 0

    font = love.graphics.newFont("fonts/roboto/Roboto-Light.ttf", 25)
end

function love.update(dt) -- dt = delta time
    windowWidth = love.graphics.getWidth()
    windowHeight = love.graphics.getHeight()
end

function love.draw()
    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(font)

    love.graphics.print("Points: " .. score, 25, 25)
    love.graphics.print("FPS: " .. love.timer.getFPS(), 25, 55)

    love.graphics.setColor(0, 0.5, 0)
    love.graphics.circle("fill", button.x, button.y, button.size)
end

function distanceFormula(x1, y1, x2, y2)
    return math.sqrt((x2-x1)^2 + (y2-y1)^2)
end

function love.mousepressed(x, y, mouseButton)
    local mouseX = love.mouse.getX()
    local mouseY = love.mouse.getY()
    if mouseButton == 1 then
        if distanceFormula(button.x, button.y, mouseX, mouseY) < button.size then
            score = score + 1
            button.x = math.random(button.size, windowWidth - button.size)
            button.y = math.random(button.size, windowHeight - button.size)
        else
            love.window.showMessageBox( "You Lost!", "The game will be closed now.", info, true )
            love.event.quit(0)
        end
    end
end