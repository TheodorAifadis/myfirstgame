function love.load()
  world = love.physics.newWorld(0, 8.12*64, true) -- gravitationsvariabel * 1 meter i spelet (64px)
                                                 -- 8,1 för att tajma studsarna med musiken
  love.physics.setMeter(64) -- 1 meter i spelet = 64px
  
  ground = {}
  ground.body = love.physics.newBody(world, 650/2, 650-50/2)
  ground.shape = love.physics.newRectangleShape(650, 50)
  ground.fixture = love.physics.newFixture(ground.body, ground.shape)
  
  player = {}
  player.body = love.physics.newBody(world, 650/2, 650/2, "dynamic")
  player.shape = love.physics.newCircleShape(20) -- radie
  player.fixture = love.physics.newFixture(player.body, player.shape, 1) -- densitet
  player.fixture:setRestitution(1) -- studskoefficient
  
  function getBall(x)
    ball = {}
    ball.body = love.physics.newBody(world, math.random(0, 650), x, "dynamic")
    ball.shape = love.physics.newCircleShape(19) -- radie
    ball.fixture = love.physics.newFixture(ball.body, ball.shape, 0) -- densitet
    return ball
  end
  
  -- antalet "ballX = getBall(Y)" så många bollar kommer att finnas
  ball1 = getBall(-100)
  ball2 = getBall(-200)
  ball3 = getBall(-300)

  love.graphics.setBackgroundColor(0, 0, 0) -- bakgrundsfärg
  love.window.setMode(650, 650) -- spel-fönstrets storlek
end