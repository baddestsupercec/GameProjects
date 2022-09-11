
PauseState = Class{__includes = BaseState}

local bronze = love.graphics.newImage('bronze.png')

function PauseState:enter(params)
    self.bird = params.bird
end

function PauseState:update(dt)
    if love.keyboard.wasPressed('p') then
        gStateMachine:change('play')
    end
end

function PauseState:render()

    love.graphics.draw(bronze, VIRTUAL_WIDTH/2 - 20, 180,0,.2,.2,0,0)
    
end