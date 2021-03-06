require('load')
require('update')
require('draw')
require('collision')
require('keybinds')
require('highscore')

math.randomseed(os.time())

score = 0
highscore = 0

x = 1

gameOver = false
pauseGame = false
tutorial = false
mainMenu = true

greenFont = {0, 1, 0, 1}
bigFont = love.graphics.newFont("assets/Stick-Regular.ttf", 100)
smallFont = love.graphics.newFont("assets/Stick-Regular.ttf", 25)
miniFont = love.graphics.newFont("assets/Stick-Regular.ttf", 15)

music = love.audio.newSource("assets/bensound-house.mp3", "stream")
music:setVolume(1)
music:setLooping(true)
gameOverSound = love.audio.newSource("assets/gameover.wav", "stream")
gameOverSound:setPitch(.4)
levelSound = love.audio.newSource("assets/level-up.wav", "stream")
levelSound:setPitch(.8)

image = love.graphics.newImage("assets/true-jedi.png")