int total = 0;

void setup()
  {
      noLoop();
      size(1000, 1000);
           
  }
  void draw()
  {
      background(255);
      //many dice
      for (int i = 0; i <= 90; i += 10){
        for (int j = 10; j <= 90; j += 10){
          fill(255);
          Die dice1 = new Die((i * 10), (j * 10));
          dice1.show();
        }
      }
      textSize(16);
      fill(0);
    text("Sum is " + total, 460, 60);

    total = 0;
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY;
     
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
      }
      void roll()
      {
      }
      void show()
      {
          rect(myX, myY, 100, 100, 10);
          int diceNum = (int)(Math.random()*6 + 1);
          // can combine ifs because of overlapping dots
          fill(0);
         if (diceNum == 1){
           fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
            ellipse(myX + 50, myY + 50, 20, 20);
            total += 1;
         }
         if (diceNum == 2){
            ellipse(myX + 30, myY + 30, 20, 20);
            ellipse(myX + 70, myY + 70, 20, 20);
            total += 2;
         }
         if (diceNum == 3){
            ellipse(myX + 75, myY + 75, 20, 20);
            ellipse(myX + 50, myY + 50, 20, 20);
            ellipse(myX + 25, myY + 25, 20, 20);
            total += 3;
         }
         if (diceNum == 4){
            ellipse(myX + 75, myY + 75, 20, 20);
            ellipse(myX + 75, myY + 25, 20, 20);
            ellipse(myX + 25, myY + 25, 20, 20);
            ellipse(myX + 25, myY + 75, 20, 20);
            total += 4;
         }
         if (diceNum == 5){
            ellipse(myX + 75, myY + 75, 20, 20);
            ellipse(myX + 75, myY + 25, 20, 20);
            ellipse(myX + 25, myY + 25, 20, 20);
            ellipse(myX + 25, myY + 75, 20, 20);
            ellipse(myX + 50, myY + 50, 20, 20);
            total += 5;
         }
         if (diceNum == 6){
            ellipse(myX + 75, myY + 75, 18, 18);
            ellipse(myX + 75, myY + 25, 18, 18);
            ellipse(myX + 25, myY + 25, 18, 18);
            ellipse(myX + 25, myY + 75, 18, 18);
            ellipse(myX + 75, myY + 50, 18, 18);
            ellipse(myX + 25, myY + 50, 18, 18);
            total += 6;
         }
      }
  }
