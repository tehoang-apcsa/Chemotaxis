 //declare bacteria variables here   
 Bacteria [] bob = new Bacteria [150];
 int a = 3;
 int b = 3;
 
 void setup()   
 {     
   size (500,500);
   for (int i = 0; i < bob.length; i++)
    bob[i] = new Bacteria(); //creating instance
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   background (235);
   for (int i = 0; i < bob.length; i++)
     {
      bob[i].walk();
      bob[i].show();
     }
   //move and show the bacteria   
 }  
 class Bacteria    
 {     
   //lots of java!   
    int myX, myY, myColor, mySize;
    Bacteria() 
    {
      myX = (int) (Math.random()*501);
      myY = (int) (Math.random()*501);
      myColor = (int) (Math.random()*231);
      mySize = (int) (Math.random()*15)+5;
    }
    void walk ()
    {
     if (myX < mouseX)
        a = 2;
      if (myY < mouseY)
        b = 2;
      if (myX > mouseX)
        a = 4;
      if (myY > mouseY)
        b = 4;
        
      myX += (int) (Math.random()*7)-a;
      myY += (int) (Math.random()*7)-b;
    }
    void show () 
   {
     noStroke();
     fill (myColor); 
     ellipse (myX,myY,mySize,mySize);
     //place holder
   }
   
 }


