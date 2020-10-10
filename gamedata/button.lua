require("class")

button = class:new()

local rigImage = love.graphics.newImage("rig.png")

function drill:init(posx, posy)
   self.x = posx
   self.y = posy
end


function drill:update()
end


function drill:draw()
   love.graphics.draw(rigImage, self.x, self.y)
end
