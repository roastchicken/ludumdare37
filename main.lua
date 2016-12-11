function love.load()
  love.window.setMode( 620, 360, { x = 1300, y = 245 } )
  love.window.setTitle( "Ludum Dare 37 Game" )
  lurker = require( "lurker" )
  love.graphics.setBackgroundColor( { 42, 201, 184 } )
  Camera = require( "camera" )
  camera = Camera( 0, 0 )
end

function love.update( dt )
  lurker.update()
end

function love.draw()
  camera:attach()
  love.graphics.setColor( { 255, 255, 255 } )
  love.graphics.rectangle( "fill", -25, -50, 50, 100 )
  love.graphics.setColor( { 21, 152, 11 } )
  love.graphics.rectangle( "fill", -2000, 50, 4000, 2000 )
  camera:detach()
end
