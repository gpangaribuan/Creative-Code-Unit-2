require("L5")

function setup()
  size(800, 600)
  windowTitle("HW7 Geraldine")
  describe('Draws a guitar animation')

  frames = 0
  x = {273, 182, 127, 73, 16, 0}
  y = {0, 0, 0, 0, 0, 0}
  maxY = {227, 200, 175, 150, 125, 100}
  pick = {1, 2, 3, 4, 5, 6}
  pick1 = 1
  pick2 = 2
  pick3 = 3
  pick4 = 4
end

function draw()
  background(255, 232, 0)
  noStroke()
  fill(0, 120, 191)
  quad(-100, 0, width/3.2, -10, 900, height, width/1.5, height)
  fill(181, 122, 12)
  ellipse(width/1.15, 700, 1000, 1000)
  fill(0, 120, 191)
  ellipse(width/1.05, 700, 400, 400)

  --guitar strings
  for i = 1, 6, 1 do
    stroke(0)
    strokeWeight(10)
    line(-105+i*55,-10,width/1.48 + i*55,620)
  end

  frames = frames + 1

  --generates random ellipse positions
  if frames >= 100 then
    frames = 0
    pick1 = random(pick)
    pick2 = random(pick)
    pick3 = random(pick)
    pick4 = random(pick)

    for i = 1, 6 do
      y[i] = random(0, maxY[i])
      local x1 = -105 + i*55
      local x2 = width/1.48 + i*55
      x[i] = x1 + ((y[i]+10)/630)*(x2-x1)
    end
  end

  --draws ellipse and chooses only 4/6 (some can repeat) to draw
  noStroke()
  fill(255, 72, 176)
  for i = 1, 4 do
    local n
    if i == 1 then
      n = pick1
    elseif i == 2 then
      n = pick2
    elseif i == 3 then
      n = pick3
    else
      n = pick4
    end
    ellipse(x[n], y[n], 40, 25)
  end

  --mouse coordinates
  --[[fill(255, 72, 176)
  textSize(16)
  text("x: "..mouseX.." y:"..mouseY, 50, 50)]]--
end