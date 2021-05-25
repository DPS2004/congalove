function love.load()
  love.graphics.setDefaultFilter("nearest","nearest")
  
  maincanvas = love.graphics.newCanvas(gameWidth, gameHeight)
  
  font = love.graphics.newFont("assets/Axmolotl.ttf",16)
  font:setFilter("nearest","nearest")
  love.graphics.setFont(font)
  
  source = love.audio.newSource("assets/conga.ogg", "stream")
  
end

function love.update()
  
  if not source:isPlaying( ) then
		love.audio.play( source )
	end
  
  
end


function love.draw()
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.setCanvas(maincanvas)
    love.graphics.clear()
    love.graphics.print("hello world!",0,0,0,2,2)
    
    
  love.graphics.setCanvas()
  love.graphics.clear()
  love.graphics.setColor(1, 1, 1, 1)
  --love.graphics.setBlendMode("alpha", "premultiplied")
  love.graphics.draw(maincanvas,0,0,0,gameScale,gameScale)
  
  
end