function love.load()
  love.window.setMode( 1280, 720, { x = 0, y = 0, vsync = false } )
  love.window.setTitle( "Ludum Dare 37 Game" )
end

function love.update( dt )
  
end

function love.draw()
  love.graphics.setBackgroundColor( { 0, 255, 255 } )
  love.graphics.circle( "fill", 200, 200, 50  )
end