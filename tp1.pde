//CIRCULO CROMATICO DE VICTORIA D'ANGELO

void setup() { 

  size( 600, 600 ); 
  smooth(); 
  background( #FFFFFF );
}

void draw() { 

  stroke(0);
  fill( #FF7003 ); //naranja
  triangle( 380, 100, 460, 150, 300, 300);
  fill( #FFFF00 ); //amarillo
  triangle( 258, 90, 385, 90, 300, 300);
  fill( #FF0080); //fucsia
  triangle( 510, 240, 510, 330, 300, 300);
  fill( #F00000 ); //rojo
  triangle( 480, 130, 530, 250, 300, 300);
  fill( #7600C6 ); //violeta
  triangle( 480, 410, 400, 480, 300, 300);
  fill( #FF27D8 ); //magenta
  triangle( 525, 330, 480, 430, 300, 300);
  fill( #04ADC9 ); //celeste
  triangle( 290, 485, 190, 450, 300, 300);
  fill( #0016CB ); //azul
  triangle( 415, 485, 280, 495, 300, 300);
  fill( #00FFFF ); //cian
  triangle( 195, 470, 120, 380, 300, 300); 
  fill( #0CF09A ); //verde cian
  triangle( 140, 370, 130, 280, 300, 300);
  fill( #7FFF00 ); //lima
  triangle( 155, 175, 260, 100, 300, 300 );
  fill( #13D311 ); //verde
  triangle( 105, 280, 145, 165, 300, 300 );

  noStroke();
  fill(#FFFF00); //amarillo
  circle( 320, 60, 45);
  fill(#FF7003); //naranja
  circle( 440, 110, 20);
  fill(#F00000); //rojo
  circle( 540, 190, 45);
  fill(#FF0080); //fucsia
  circle( 530, 290, 20);
  fill(#FF27D8); // magenta
  circle( 535, 390, 45);
  fill(#7600C6); //violeta 
  circle( 450, 460, 20);
  fill(#0016CB); //azul
  circle( 340, 525, 45);
  fill(#04ADC9); //celeste
  circle( 225, 490, 20);
  fill(#00FFFF);//cian
  circle( 125, 435, 45);
  fill(#0CF09A); // verde cian
  circle( 115, 335, 20);
  fill(#13D311); //verde
  circle( 90, 220, 45);
  fill(#7FFF00); //lima
  circle( 185, 125, 20);
  stroke(0);
  fill(#FFFFFF);
  circle( 310, 300, 70);
}
