 //declare bacteria variables here   
 Bacteria[] bob;

 void setup()   
 {     
 	//initialize bacteria variables here   
 size(500,500);
 bob= new Bacteria[100];
 for (int i=0; i<bob.length; i++) 
 {
     bob[i] = new Bacteria();
     
   }
 
 }   
 void draw()   
 {    
 	//move and show the bacteria  
  background(255);
   for (int i = 0; i < bob.length; i++)
   {
  bob[i].move();
  bob[i].show();
 }  
 }
 
 class Bacteria    
 {     
 int myX,myY,myColor;
   Bacteria()
   {
     myX=200;
     myY=200;
     myColor=color((int)(Math.random()*200),(int)(Math.random()*100),(int)(Math.random()*58));
   }

   
 void move()
 {
  int direction = (int)(Math.random()*4);
 
  if(direction == 0)
  {
    myX = myX + 2; 
  }
  else if(direction == 1)
  {
   myX = myX - 2; 
  }
  else if(direction == 2)
  {
    myY = myY + 2; 
  }
  else
  {
    myY = myY - 2; 
 }
 }
 void show()
 {
   fill(myColor);
  ellipse(myX, myY, 5, 5);
   
 }
 
 }  