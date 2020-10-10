// PROGRAM: DICE SIMULATION
// AUTHOR: ANDREA ROBINOWITZ

float totalSum=0;
float totalDiceRolledThisTurn = 0, totalTotalDiceRolled = 0;
float averageRollThisTurn=0, totalAverageRoll=0;


int returnRandomNumber(int max) {
 // this function returns a random integer,x, such that 0<= X <= max
 // the argument, max, must be an integer >= 0.

return ((int) (Math.random()*(max+1)));
}
void setup()
  {
    size(860,860);
    background(250);
      noLoop();
  }
  void draw()
  {
      
      float total=0;
      Die newDie; 
      background(255);
       
      totalDiceRolledThisTurn = 0;  
  
      for (int y = 50; y < 700; y = y+60) {
        for (int x = 50; x < 800; x = x+60) {
      {
        newDie = new Die (x, y);
        newDie.roll();
        newDie.show();
        total =total + newDie.value;
        totalDiceRolledThisTurn++;
        totalTotalDiceRolled++;
      }
      }
    }
      fill(0);
      text("Dice simulation program: click mouse to roll once; press and hold any key for rapid run.",50,17);
      totalSum = totalSum + total;
      text("Total Score: "+total+
      ". Average Score: "+(float) (total/totalDiceRolledThisTurn)+
      ". Cumualtive Dice Rolled: "+totalTotalDiceRolled+". Cumulative Average Score: "+(float) (totalSum/totalTotalDiceRolled),50,740);
  }
  
  void keyPressed () {
    loop();
  }
  
  void keyReleased () {
    noLoop ();
  }
  
  
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int value=0;
      int myX,myY;
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX=x;
          myY=y;
      }
      void roll()
      {
          value = returnRandomNumber(5)+1; //sets value to random integer between 1 and 6 inclusive
          
      }
      void show()
      {
        
        noStroke ();
        fill (130);        
        square (myX+4, myY+4, 50);
        fill (0);
        rect (myX, myY, 50, 50);
          fill (255);
          if (value == 1) {
            ellipse (myX+25,myY+25, 10,10);
          }
          else if (value == 2) {
            ellipse (myX+15,myY+15, 10,10);
            ellipse (myX+35,myY+35, 10,10);
          }
          else if (value == 3){
            ellipse (myX+10,myY+10, 10,10);
            ellipse (myX+40,myY+40, 10,10);
            ellipse (myX+25,myY+25, 10,10);
          }
          else if (value == 4){
            ellipse (myX+12,myY+12, 10,10);
            ellipse (myX+38,myY+12, 10,10);
            ellipse (myX+12,myY+38, 10,10);
            ellipse (myX+38,myY+38, 10,10);
          }
          else if (value == 5){
            ellipse (myX+12,myY+12, 10,10);
            ellipse (myX+38,myY+12, 10,10);
            ellipse (myX+12,myY+38, 10,10);
            ellipse (myX+38,myY+38, 10,10);
            ellipse (myX+25,myY+25, 10,10);
          }
          else{
            ellipse (myX+10, myY+15, 10,10);
            ellipse (myX+25, myY+15, 10,10);
            ellipse (myX+40, myY+15, 10, 10);
            ellipse (myX+10, myY+35, 10,10);
            ellipse (myX+25, myY+35, 10,10);
            ellipse (myX+40, myY+35, 10, 10);
            
            
          }
      }
  }
