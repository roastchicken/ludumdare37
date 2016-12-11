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
  love.graphics.setColor( { 128, 136, 139 } )
  love.graphics.rectangle( "fill", -200, 10, 400, 70 ) -- back of conveyor belt
  love.graphics.setColor( { 151, 165, 170 } )
  love.graphics.rectangle( "fill", -160, 70, 400, 70 ) -- front of conveyor belt
  love.graphics.setColor( { 26, 32, 34 } )
  love.graphics.polygon( "fill", -200, 10, 200, 10, 240, 70, -160, 70 ) -- top of conveyor belt
  camera:detach()
end
