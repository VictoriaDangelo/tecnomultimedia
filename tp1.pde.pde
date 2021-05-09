//CIRCULO CROMATICO DE VICTORIA D'ANGELO

void setup() { 

  size( 600, 600 ); 
  smooth(); 
  background( #FFFFFF );
}

void draw() { 


  fill( #FFF703 ); //amarillo
  stroke(0);
  triangle( 260, 100, 380, 100, 300, 300); 
  fill( #FF7003 ); //naranja
  triangle( 380, 100, 460, 150, 300, 300);
  fill( #F00000 ); //rojo
  triangle( 460, 150, 510, 240, 300, 300);
  fill( #FF0080); //fucsia
  triangle( 510, 240, 510, 330, 300, 300);
  fill( #FF27D8 ); //magenta
  triangle( 510, 330, 480, 410, 300, 300);
  fill( #7600C6 ); //violeta
  triangle( 480, 410, 400, 480, 300, 300);
  fill( #0016CB ); //azul
  triangle( 400, 480, 290, 485, 300, 300);
  fill( #04ADC9 ); //celeste
  triangle( 290, 485, 190, 450, 300, 300);
  fill( #00FFFF ); //cian
  triangle( 190, 450, 140, 370, 300, 300); 
  fill( #0CF09A ); //verde cian
  triangle( 140, 370, 130, 280, 300, 300);
  fill( #13D311 ); //verde
  triangle( 130, 280, 155, 175, 300, 300 );
  fill( #7FFF00 ); //lima
  triangle( 155, 175, 260, 100, 300, 300 );

  noStroke();
  fill(#FFF703); //amarillo
  circle( 320, 70, 45);
  fill(#FF7003); //naranja
  circle( 440, 110, 20);
  fill(#F00000); //rojo
  circle( 515, 190, 45);
  fill(#FF0080); //fucsia
  circle( 530, 285, 20);
  fill(#FF27D8); // magenta
  circle( 525, 375, 45);
  fill(#7600C6); //violeta 
  circle( 450, 460, 20);
  fill(#0016CB); //azul
  circle( 340, 510, 45);
  fill(#04ADC9); //celeste
  circle( 220, 490, 20);
  fill(#00FFFF);//cian
  circle( 140, 425, 45);
  fill(#0CF09A); // verde cian
  circle( 115, 335, 20);
  fill(#13D311); //verde
  circle( 110, 235, 45);
  fill(#7FFF00); //lima
  circle( 185, 125, 20);
  fill(#FFFFFF);
  circle( 310, 300, 70);
}
