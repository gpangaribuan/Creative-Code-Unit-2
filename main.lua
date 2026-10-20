foodName1 = {"Apple","Orange","Pie","Candy","Sugar","Cheese","Cake","Cookie","Chips","Carrots","Matcha","Tea","Coffee","Toffee","Honey"}
flowerName2 = {"Daisy","Peony","Rose","Lily","Lilac","Orchid","Hibiscus","Blossom","Bloom","Petal","Leaf","Bush"}
ponyType = {"Earth","Unicorn","Pegasus","Sea"}
require("L5")

function setup()
  size(400, 700)
  windowTitle("HW8 Geraldine")

  describe('MLP name.')

  background(169, 112, 199)
  --button dimensions
  x1 = width/2.7
  y1 = 150
  w = 100
  h = 30
  x2 = 180-w
  x3 = 220
  y2 = y1 + 125

  --button TEXT widths
  ptx = width/2-10
  n1x = width/2-x2+3
  n2x = width/2+65

  tempType = ""
  tempFood = ""
  tempFlower = ""
    

  background(169, 112, 199)
  fill(250, 239, 255)
  textSize(30)
  textAlign(CENTER)
  text("What Is My 'My Little Pony' Character?",290,30,400)

  --random buttons
  stroke(101, 45, 135)
  strokeWeight(5)
  fill(234, 66, 139)
  rect(x1,y1,w,h)
  rect(x2,y2,w,h)
  rect(x3,y2,w,h)
  
  --ready and reset buttons
  fill(255, 192, 233)
  rect(x1-60,600,w,h)
  rect(x1+60,600,w,h)

  fill(101, 45, 135)
  textSize(15)
  text("PONY TYPE",ptx,y1+5,w)
  text("FIRST NAME",n1x,y2+5,w)
  text("LAST NAME",n2x,y2+5,w)
  text("READY",x1-35,605,w)
  text("RESET",x1+85,605,w)

  textSize(35)
  text("You are a(n) ___ pony",width/2,400,width-30)
  text("and your name is",width/2-25,450,width-30)
  text("___ ___!",x2,500,width-30)
end

function mousePressed()
  --repeat everything from set up
  background(169, 112, 199)
  fill(250, 239, 255)
  textSize(30)
  textAlign(CENTER)
  text("What Is My 'My Little Pony' Character?",290,30,400)

  stroke(101, 45, 135)
  strokeWeight(5)
  fill(234, 66, 139)
  rect(x1,y1,w,h)
  rect(x2,y2,w,h)
  rect(x3,y2,w,h)
  fill(255, 192, 233)
  rect(x1-60,600,w,h)
  rect(x1+60,600,w,h)

  fill(101, 45, 135)
  textSize(15)
  text("PONY TYPE",width/2-10,y1+5,w)
  text("FIRST NAME",width/2-x2+3,y2+5,w)
  text("LAST NAME",width/2+65,y2+5,w)
  text("READY",x1-35,605,w)
  text("RESET",x1+85,605,w)

  textSize(35)
  text("You are a(n) ___ pony",width/2,400,width-30)
  text("and your name is",width/2-25,450,width-30)
  text("___ ___!",x2,500,width-30)

  textSize(20)
  if mouseX >= x1 and mouseX <= x1+w
  and mouseY >= y1 and mouseY <= y1+h then
    tempType = random(ponyType)
  elseif mouseX >= x2 and mouseX <= x2+w
  and mouseY >= y2 and mouseY <= y2+h then
    tempFood = random(foodName1)
  elseif mouseX >= x3 and mouseX <= x3+w
  and mouseY >= y2 and mouseY <= y2+h then
    tempFlower = random(flowerName2)
  --ready button that puts it in a sentence
  elseif mouseX >= x1-60 and mouseX <= x1-60+w
  and mouseY >= 600 and mouseY <= 600+h then
    textSize(15)
    text(tempType,245,410,w)
    text(tempFood,120,500,w)
    text(tempFlower,200,500,w)
  --reset button to clear strings
  elseif mouseX >= x1+60 and mouseX <= x1+60+w
  and mouseY >= 600 and mouseY <= 600+h then
    tempType = ""
    tempFood = ""
    tempFlower = ""
  end

  textSize(20)
  text(tempType,ptx,y1+50,w)
  text(tempFood,n1x,y2+50,w)
  text(tempFlower,n2x,y2+50,w)
end