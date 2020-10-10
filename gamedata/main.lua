require("drill")
require("level")

mapX = 1
mapY = 1

worldPositionX = 0.0000
worldPositionY = 100.000

scrollSpeed = 100

local myDrillRig = {}

function love.draw()
	love.graphics.translate(worldPositionX, worldPositionY)

    
	level.draw()
	
	
	myDrillRig:draw()
	
	love.graphics.print("World Position: " .. worldPositionX .. " " .. worldPositionY , 5, 5.00000 - worldPositionY)
end


function love.load()
	level.load()
	myDrillRig = drill:new(50, 10)
end

function love.update(dt)
	if love.keyboard.isDown("down") then
		worldPositionY = worldPositionY + scrollSpeed * -love.timer.getDelta()
	end
	
	if love.keyboard.isDown("up") then
		worldPositionY = worldPositionY + scrollSpeed * love.timer.getDelta()
	end
	
end

function love.mousepressed(x, y, button)
   if button == 'l' then
      imgx = x -- move image to where mouse clicked
      imgy = y
   end
end

function love.keypressed(key)
	
end

function love.quit()
	print("Thanks for playing! Come back soon!")
end