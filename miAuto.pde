//CLASE AUTO

class Auto {   
//CAMPOS
color c;        
float xpos;
float ypos;
float xspeed;

Auto (color tempC, float tempXpos, float tempYpos, float tempXspeed)  {    
c = tempC;   
xpos = tempXpos;   
ypos = tempYpos;   
xspeed = tempXspeed;   
}

void dibujarAuto() {
   stroke(0);
   fill(c);
   rect(xpos,ypos,40,15);
   rect(xpos+10,ypos,20,-10);
   strokeWeight(10);
   point(xpos+9, ypos+18);
   point(xpos+33, ypos+18);
   strokeWeight(1);
}

void direccionDer() {
   xpos = xpos + xspeed;
   if (xpos > width) {   xpos = 0;   }
  }
}
