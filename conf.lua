function love.conf(t)

  gameWidth, gameHeight = 400,240 
  gameScale = 2
  t.console = true
  windowWidth, windowHeight = gameWidth*gameScale, gameHeight*gameScale
  t.window.width = windowWidth
  t.window.height = windowHeight
end
