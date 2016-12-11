function love.load()
  love.window.setMode( 620, 360, { x = 1300, y = 245 } )
  love.window.setTitle( "Ludum Dare 37 Game" )
  lurker = require( "lurker" )
  love.graphics.setBackgroundColor( { 94, 36, 11 } )
  Camera = require( "camera" )
  camera = Camera( 0, 0 )
end

function love.update( dt )
  lurker.update()
end

function love.draw()
  camera:attach()
  love.graphics.setColor( { 120, 46, 14 } )
  love.graphics.rectangle( "fill", -310, 0, 620, 180 ) -- floor
  love.graphics.setColor( { 151, 165, 170 } )
  love.graphics.rectangle( "fill", -200, -25, 400, 50 ) -- back of conveyor belt
  camera:detach()
end
