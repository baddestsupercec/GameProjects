--[[
    GD50
    Match-3 Remake

    -- Tile Class --

    Author: Colton Ogden
    cogden@cs50.harvard.edu

    The individual tiles that make up our game board. Each Tile can have a
    color and a variety, with the varietes adding extra points to the matches.
]]

Tile = Class{}

function Tile:init(x, y, color, variety)
    
    -- board positions
    self.gridX = x
    self.gridY = y

    -- coordinate positions
    self.x = (self.gridX - 1) * 32
    self.y = (self.gridY - 1) * 32

    -- tile appearance/points
    self.color = color
    self.variety = variety
    self.shiny = math.random(1,5)
    self.opacity = .3
    self.opacityGoal = 0
end

function Tile:update(dt)
    --if self.start then 
    --Timer.every(1, function()

        --[[self.start = false
        if self.opacity >= self.opacityGoal then 
            self.opacity = self.opacity - .005
            if self.opacity <= 0 and self.opacityGoal <= 0 then
                self.opacity = 0
                self.opacityGoal = .3
            end
        elseif self.opacity <= self.opacityGoal then 
            self.opacity = self.opacity + .005
            if self.opacity >= .3 and self.opacityGoal >= .3 then
                self.opacity = .3
                self.opacityGoal = 0
            end
        end--]]
        
        if self.shiny == 1 then
        Timer.tween(.35, {
            [self] = {opacity = self.opacityGoal}
        })
        if self.opacity <= 0 and self.opacityGoal <= 0 then
            self.opacity = 0
                    self.opacityGoal = .3
        end
        if self.opacity >= .3 and self.opacityGoal >= .3 then
            self.opacity = .3
                    self.opacityGoal = 0
    end
end
    
       -- self.start = true
    --end)
--end

    --[[if self.opacity <= 0 and self.opacityGoal <= 0 then
        self.opacityGoal = 1
    end


 Timer.tween(.5, {
        [self] = {opacity = opacityGoal}
    })
    if self.opacity <= 0 and self.opacityGoal <= 0 then
        self.opacity = .0
                self.opacityGoal = .3
    end
    if self.opacity >= .3 and self.opacityGoal >= .3 then
        self.opacity = .3
                self.opacityGoal = 0
    end




    if self.opacity >= .3 and self.opacityGoal >= 1 then
        self.opacityGoal = 0
    end--]]
    
end

function Tile:render(x, y)
    
    -- draw shadow
    love.graphics.setColor(34, 32, 52, 255)
    love.graphics.draw(gTextures['main'], gFrames['tiles'][self.color][self.variety],
        self.x + x + 2, self.y + y + 2)

    -- draw tile itself
    
    love.graphics.setColor(255, 255, 150, 255)
    love.graphics.draw(gTextures['main'], gFrames['tiles'][self.color][self.variety],
        self.x + x, self.y + y)
        if self.shiny == 1 then
            love.graphics.setColor(255, 255, 255, self.opacity)
            love.graphics.rectangle('fill', (self.gridX - 1) * 32 + (VIRTUAL_WIDTH - 272),
                (self.gridY - 1) * 32 + 16, 32, 32, 4)
        end
end

--[[

    GD50
    Match-3 Remake

    -- Tile Class --

    Author: Colton Ogden
    cogden@cs50.harvard.edu

    The individual tiles that make up our game board. Each Tile can have a
    color and a variety, with the varietes adding extra points to the matches.


Tile = Class{}

function Tile:init(x, y, color, variety)
    
    -- board positions
    self.gridX = x
    self.gridY = y

    -- coordinate positions
    self.x = (self.gridX - 1) * 32
    self.y = (self.gridY - 1) * 32

    -- tile appearance/points
    self.color = color
    self.variety = variety
    self.shiny = math.random(1,5)
end

function Tile:render(x, y)
    
    -- draw shadow
    love.graphics.setColor(34, 32, 52, 255)
    love.graphics.draw(gTextures['main'], gFrames['tiles'][self.color][self.variety],
        self.x + x + 2, self.y + y + 2)

    -- draw tile itself
    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.draw(gTextures['main'], gFrames['tiles'][self.color][self.variety],
        self.x + x, self.y + y)
        if self.shiny == 1 then
            love.graphics.rectangle('line', (self.gridX - 1) * 32 + (VIRTUAL_WIDTH - 272),
                (self.gridY - 1) * 32 + 16, 32, 32, 4)
        end
end
--]]