function love.load()
  love.window.setMode( 640, 360, { x = 200, y = 200, borderless = true, centered = false, vsync = false } )
  love.window.setTitle( "Ludum Dare 37 Game" )
end

function love.update( dt )
  
end

function love.draw()
  love.graphics.setBackgroundColor( { 0, 255, 255 } )
  love.graphics.circle( "fill", 200, 200, 50  )
end