--Homework 4 Geraldine Pangaribuan

require("L5")

function setup()
  size(400, 400)
  angleMode(DEGREES)

  -- Set the program title
  windowTitle("HW4 Geraldine")

  describe('Draws a ladybug')
end

function draw()
  --Green background 
  background(127, 199, 82)

  --Dark green stem 1
  stroke(62, 102, 37)
  strokeWeight(10)
  line(0, 0, 500, 500)

  --Stem 2, TOP LEFT
  stroke(62, 102, 37)
  strokeWeight(6)
  line(0, 110, 120, 120)

  --Stem 3, TOP RIGHT
  stroke(62, 102, 37)
  strokeWeight(6)
  line(100, 0, 120, 120)

  --Stem 4, MIDDLE LEFT
  stroke(62, 102, 37)
  strokeWeight(6)
  line(0, 220, 225, 225)

  --Stem 5, MIDDLE RIGHT
  stroke(62, 102, 37)
  strokeWeight(6)
  line(220, 0, 225, 226)

  --Stem 6, BOTTOM LEFT
  stroke(62, 102, 37)
  strokeWeight(6)
  line(0, 340, 350, 350)

  --Stem 7, BOTTOM RIGHT
  stroke(62, 102, 37)
  strokeWeight(6)
  line(340, 0, 350, 350)

  --Ladybug head
  noStroke()
  fill(0, 0, 0)
  ellipse(200, 100, 80, 60)

  --Ladybug head white spot
  noStroke()
  fill(255, 255, 255)
  ellipse(200, 80, 30, 15)

  --Ladybug eye left
  noStroke()
  fill(43, 43, 43)
  ellipse(170, 85, 25, 25)

  --Ladybug eye right
  noStroke()
  fill(43, 43, 43)
  ellipse(233, 85, 25, 25)

  --Ladybug "neck"
  noStroke()
  fill(0, 0, 0)
  ellipse(200, 140, 110, 70)

  --Ladybug neck white spot left
  noStroke()
  fill(255, 255, 255)
  ellipse(170, 120, 25, 15)

  --Ladybug neck white spot right
  noStroke()
  fill(255, 255, 255)
  ellipse(230, 120, 25, 15)
  
  --Ladybug body
  noStroke()
  fill(191, 37, 37)
  ellipse(200, 245, 190, 220)

  --Ladybug white spot
  noStroke()
  fill(255, 255, 255)
  ellipse(200, 149, 80, 30)

  --Ladybug body rectangle
  noStroke()
  fill(0, 0 , 0)
  rect(194, 130, 15, 225)

  --Ladybug spot 1, TOP MID
  noStroke()
  fill(0, 0, 0)
  ellipse(200, 150, 55, 45)

  --Spot 2, TOP LEFT
  noStroke()
  fill(0, 0, 0)
  ellipse(145, 190, 45, 55)

  --Spot 3, TOP RIGHT
  noStroke()
  fill(0, 0, 0)
  ellipse(255, 190, 45, 55)

  --Spot 4, MID LEFT
  noStroke()
  fill(0, 0, 0)
  ellipse(170, 245, 45, 55)

  --Spot 5, MID RIGHT
  noStroke()
  fill(0, 0, 0)
  ellipse(235, 245, 45, 55)

  --Spot 6, BOTTOM LEFT
  noStroke()
  fill(0, 0, 0)
  ellipse(150, 305, 45, 55)

  --Spot 7, BOTTOM RIGHT
  noStroke()
  fill(0, 0, 0)
  ellipse(250, 305, 45, 55)

end