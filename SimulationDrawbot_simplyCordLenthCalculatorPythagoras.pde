float x,y, a, b, d;

void setup(){
  
  size(400,400);
  x = 200;
  y = 200;
}


void draw(){
  background(204);
 
 //x = mouseX;
 //y = mouseY;
 
 rect(100,100,200,200); // drawing space
 
 //convert x,y into cord lengths a and b
 a = sqrt(pow(x,2)+pow(y,2));
 b = sqrt(pow((d-x),2)+pow(y,2));
 
 println(a);
 // red rect for pen position
 pushStyle();
 stroke(255,0,0);
 fill(255,0,0);
 rect(x-5,y,10,10); 
 popStyle();
 
 //lines to display cords and central axis
 line(x,y,0,0);
 line(x,y,width,0);
 line(x,y,x,0);
 
 //// move pen randomly
 x+=random(-4,4);
 y+=random(-4,4);
 
 
 
 //////check edges
 if(x<100){
   x++;
 }
 if(x>300){
   x--;
 }
 if(y<100){
   y++;
 }
 if(y>300){
   y--;
 }
 
 
 
}