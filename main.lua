require("L5")

function setup()
  size(800, 600)

  -- Set the program title
  windowTitle("HW5 Geraldine")

  describe('Draws a cityscape')
end

function draw()
  -- Fills the background with the color yellow
  background(90, 79, 140)

 --middle
  stroke(140, 111, 173)
  strokeWeight(2)
  fill(200, 203, 242)
  quad(width / 3.5, height / 2.75, width / 1.2, height / 2.7, width / 1.2, height / 1, width / 3.5, height / 1)

  stroke(151, 150, 171)
  strokeWeight(20)
  line(297, 267, 458, 269)
  line(297, 312, 458, 315)
  line(297, 360, 458, 362)

  --middle right's side
  stroke(140, 111, 173)
  strokeWeight(2)
  fill(200, 203, 242)
  quad(width / 1.2, height / 17, width / 1.04, height / 9, width / 1.04, height / 1, width / 1.2, height / 1)
  
  --middle right
  stroke(140, 111, 173)
  strokeWeight(2)
  fill(138, 141, 184)
  quad(width / 1.6, height / 10, width / 1.2, height / 17, width / 1.2, height / 1, width / 1.6, height / 1)
  
  stroke(55, 54, 74)
  strokeWeight(15)
  x1 = 519
  x2 = 650
  y1 = 102
  y2 = 85
  z = 60
  a = z-1
  i = 1
  line(x1, y1, x2, y2)
  repeat
    drawWindowLines1()
    i = i + 1
  until i >= 10

    --back left  
  stroke(140, 111, 173)
  strokeWeight(2)
  fill(200, 203, 242)
  rect(0, 0, width / 4, height / 1)

  stroke(151, 150, 171)
  strokeWeight(20)
  x1 = 18
  x2 = 177
  y1 = 31
  y2 = 33
  z = 50
  a = z-0.05
  i = 1
  line(x1, y1, x2, y2)
  repeat
    drawWindowLines2()
    i = i + 1
  until i >= 10

  --middle left  
  stroke(140, 111, 173)
  strokeWeight(2)
  fill(138, 141, 184)
  quad(width / 10, height / 10, width / 3, height / 8, width / 3, height / 1, width / 10, height / 1)

  stroke(55, 54, 74)
  strokeWeight(15)
  x1 = 101
  x2 = 239
  y1 = 102
  y2 = 110
  z = 50
  a = z-0.3
  i = 1
  line(x1, y1, x2, y2)
  repeat
    drawWindowLines2()
    i = i + 1
  until i >= 10

  --middle left's side
  stroke(140, 111, 173)
  strokeWeight(2)
  fill(200, 203, 242)
  quad(width / 14, height / 8, width / 10, height / 10, width / 10, height / 1, width / 14, height / 1)

  --back right's side  
  stroke(140, 111, 173)
  strokeWeight(2)
  fill(138, 141, 184)
  quad(width / 1.05, height / 4.5, width / 1, height / 4.18, width / 1, height / 1, width / 1.05, height / 1)

  --back right 
  stroke(140, 111, 173)
  strokeWeight(2)
  fill(109, 113, 179)
  quad(width / 1.3, height / 3.95, width / 1.05, height / 4.5, width / 1.05, height / 1, width / 1.3, height / 1)  

  stroke(46, 14, 135)
  strokeWeight(20)
  x1 = 630
  x2 = 745
  y1 = 180
  y2 = 165
  z = 45
  a = z-.1
  i = 1
  line(x1, y1, x2, y2)
  repeat
    drawWindowLines1()
    i = i + 1
  until i >= 20

  --front left
  stroke(140, 111, 173)
  strokeWeight(2)
  fill(37, 45, 184)
  quad(width / 20, height / 2, width / 3.5, height / 1.9, width / 3.5, height / 1, width / 20, height / 1)

  stroke(18, 7, 46)
  strokeWeight(30)
  x1 = 69
  x2 = 204
  y1 = 337
  y2 = 350
  z = 60
  a = z-.05
  i = 1
  line(x1, y1, x2, y2)
  repeat
    drawWindowLines2()
    i = i + 1
  until i >= 10

  --front left's side
  stroke(140, 111, 173)
  strokeWeight(2)
  fill(109, 113, 179)
  quad(0, height / 1.9, width / 20, height / 2, width / 20, height / 1, 0, height / 1)

  --front right
  stroke(140, 111, 173)
  strokeWeight(2)
  fill(37, 45, 184)
  quad(width / 2.5, height / 1.5, width / 1.25, height / 1.55, width / 1.25, height / 1, width / 2.5, height / 1)

  stroke(18, 7, 46)
  strokeWeight(30)
  x1 = 344
  x2 = 604
  y1 = 440
  y2 = 430
  z = 60
  a = z-1
  i = 1
  line(x1, y1, x2, y2)
  repeat
    drawWindowLines1()
    i = i + 1
  until i >= 4

  --front right's side
  stroke(140, 111, 173)
  strokeWeight(2)
  fill(109, 113, 179)
  quad(width / 1.25, height / 1.55, width / 1.15, height / 1.45, width / 1.15, height / 1, width / 1.25, height / 1)

  --[[textAlign(CENTER)
  textSize(16)
  text('x: '..mouseX..' y:'..mouseY, 50, 50)]]--

  noStroke()
  fill(40, 37, 48)
  quad(mouseX - 400, mouseY + 100, mouseX - 300, mouseY + 80, mouseX - 300, mouseY + 100, mouseX - 400, mouseY + 80)
  quad(mouseX - 200, mouseY + 50, mouseX - 100, mouseY + 30, mouseX - 100, mouseY + 50, mouseX - 200, mouseY + 30)
  quad(mouseX, mouseY, mouseX + 100, mouseY - 20, mouseX + 100, mouseY, mouseX, mouseY - 20)
  quad(mouseX + 200, mouseY - 50, mouseX + 300, mouseY - 70, mouseX + 300, mouseY - 50, mouseX + 200, mouseY - 70)
  quad(mouseX + 400, mouseY - 100, mouseX + 500, mouseY - 120, mouseX + 500, mouseY - 100, mouseX + 400, mouseY - 120)
end

function drawWindowLines1()
  line(x1, y1+z, x2, y2+a)
  y1 = y1+z
  y2 = y2+a
end

function drawWindowLines2()
  line(x1, y1+a, x2, y2+z)
  y1 = y1+a
  y2 = y2+z
end