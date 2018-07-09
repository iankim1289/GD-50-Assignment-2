PauseState = Class{__includes = BaseState}

function PauseState:enter(params)
    self.pipePairs = params.pipePairs
    self.bird = params.bird
    sounds['music']:pause()
    sounds['pause']:play()
end

function PauseState:update(dt)
    if love.keyboard.wasPressed('p') then
        gStateMachine:change('play' , {
            bird = self.bird,
            pipePairs = self.pipePairs,
        })
    end
end
function love.load()
    pause = love.graphics.newImage("Pause.png")
end
function love.draw()
    push:start()
    love.graphics.draw(pause, VIRTUAL_WIDTH/2 - 10, VIRTUAL_HEIGHT/2 - 10, 20, 20)
    push:finish()
end
function PauseState:exit()
    sounds['music']:play()
end