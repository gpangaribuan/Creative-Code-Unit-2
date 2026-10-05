require("L5")

function setup()
  size(800, 600)
  windowTitle("Geraldine HW6")
  describe('Draws a moon phase')
  noStroke()

  posX = 0
  posY = height / 1
  direction = -1
  size = 300
  r = 171
  g = 157
  b = 209
end

function draw()
  fill(226, 227, 215)

  posY = posY + direction

  --changes y position
  if posY < 200 then
    direction = 1
  end

  if posY > 800 then
    direction = -1
  end

  --changes x position
  if posX > 1000 then
    posX = -200
  end

  --changes size
  if direction == 1 then
    size = size + 0.3

    --goes darker
    r = r + .4
    g = g + .4
    b = b + .3
  end

  if direction == -1 then
    size = size - 0.3

    --goes lighter
    r = r - .4
    g = g - .4
    b = b - .3
  end

  --draws circle
  background(r, g, b)
  circle(posX, posY, size)
  posX = posX + 1
end