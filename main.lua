function love.load()
  love.window.setMode( 620, 360, { x = 1300, y = 245, msaa = 4 } )
  love.window.setTitle( "Ludum Dare 37 Game" )
  lurker = require( "lurker" )
  love.graphics.setBackgroundColor( { 94, 36, 11 } )
  Camera = require( "camera" )
  camera = Camera( 0, 0 )
  conveyorOffset = 0
end

function love.update( dt )
  local conveyorMovement = dt * 20
  if conveyorOffset >= 30 then
    conveyorOffset = 0
  end
  conveyorOffset = conveyorOffset + conveyorMovement
  lurker.update()
end

local function drawConveyorBelt()
  love.graphics.polygon( "fill", -200, 10, 310, 10, 310, 70, -160, 70 )
end

function love.draw()
  camera:attach()
  
  -- floor
  
  love.graphics.setColor( { 120, 46, 14 } )
  love.graphics.rectangle( "fill", -310, 0, 620, 180 )
  
  -- conveyor
  
  love.graphics.setColor( { 128, 136, 139 } )
  love.graphics.rectangle( "fill", -200, 10, 400, 70 ) -- back of conveyor
  love.graphics.setColor( { 151, 165, 170 } )
  love.graphics.rectangle( "fill", -160, 70, 400, 70 ) -- front of conveyor
  love.graphics.setColor( { 26, 32, 34 } )
  drawConveyorBelt()
  love.graphics.setColor( { 12, 15, 16 } )
  
  love.graphics.stencil( drawConveyorBelt, "replace", 1 )
  love.graphics.setStencilTest( "greater", 0 )
    
    -- draw conveyor belt lines
    for i = 1, 18 do
      love.graphics.polygon( "fill", -215 + i * 30 - conveyorOffset, 10, -205 + i * 30 - conveyorOffset, 10, -165  + i * 30 - conveyorOffset, 70, -175  + i * 30 - conveyorOffset, 70 )
    end
    
  love.graphics.setStencilTest()
  
  -- present
    
    -- box
    
    love.graphics.setColor( { 8, 142, 14 } )
    love.graphics.polygon( "fill", -12, -18, 38, -18, 50, 0, 0, 0 ) -- top
    love.graphics.setColor( { 6, 126, 12 } )
    love.graphics.rectangle( "fill", 0, 0, 50, 50 ) -- front
    love.graphics.setColor( { 5, 116, 10 } )
    love.graphics.polygon( "fill", -12, -18, 0, 0, 0, 50, -12, 32 ) -- left
    
    -- front ribbon
    
    love.graphics.setColor( { 147, 9, 9 } )
    love.graphics.rectangle( "fill", 20, 0, 10, 50 )
    love.graphics.rectangle( "fill", 0, 20, 50, 10 )
    
  camera:detach()
end
