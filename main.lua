function love.load()
  love.window.setMode( 1280, 720, { x = 0, y = 0, vsync = false } )
  love.window.setTitle( "Ludum Dare 37 Game" )
  lurker = require( "lurker" )
end

function love.update( dt )
  lurker.update()
end

function love.draw()
  love.graphics.setBackgroundColor( { 42, 201, 184 } )
end
