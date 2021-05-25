function love.load()
  love.graphics.setDefaultFilter("nearest","nearest")
  
  maincanvas = love.graphics.newCanvas(gameWidth, gameHeight)
  
  ditto = {
    spr = love.graphics.newImage("assets/ditto.png"),
    frame = 1,
    quads = {},
    delay = 6,
  }
  
  for i=0,3 do
    ditto.quads[i+1] = love.graphics.newQuad(i*33,0,33,29,132,29)
    
  end
  
  font = love.graphics.newFont("assets/Axmolotl.ttf",16)
  font:setFilter("nearest","nearest")
  love.graphics.setFont(font)
  
  source = love.audio.newSource("assets/conga.ogg", "stream")
  
end

function love.update()
  
  ditto.delay = ditto.delay - 1
  if ditto.delay <= 0 then
    ditto.delay = ditto.delay + 6
    ditto.frame = (ditto.frame)%4 + 1

  end
  
  if not source:isPlaying( ) then
		love.audio.play( source )
	end
  
  
  
end


function love.draw()
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.setCanvas(maincanvas)
    love.graphics.clear()
    love.graphics.print("hello world!",0,0,0,2,2)
    love.graphics.draw(ditto.spr,ditto.quads[ditto.frame],64,64)
    
  love.graphics.setCanvas()
  love.graphics.clear()
  love.graphics.setColor(1, 1, 1, 1)
  --love.graphics.setBlendMode("alpha", "premultiplied")
  love.graphics.draw(maincanvas,0,0,0,gameScale,gameScale)
  
  
end