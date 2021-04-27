//CIRCULO CROMATICO DE VICTORIA D'ANGELO

void setup() { 

  size( 600, 600 ); 
  smooth(); 
  background( #FFFFFF );
}

void draw() { 


  fill( #FFF703 ); //amarillo
  noStroke();
  triangle( 260, 100, 380, 100, 300, 300); 
  fill( #FF7003 ); //naranja
  triangle( 380, 100, 460, 150, 300, 300);
  fill( #F00000 ); //rojo
  triangle( 460, 150, 510, 240, 300, 300);
  fill( #FA0F65); //coral
  triangle( 510, 240, 510, 330, 300, 300);
  fill( #FF03D6 ); //magenta
  triangle( 510, 330, 480, 410, 300, 300);
  fill( #7600C6 ); //violeta
  triangle( 480, 410, 400, 480, 300, 300);
  fill( #0016CB ); //azul
  triangle( 400, 480, 290, 485, 300, 300);
  fill( #02BBDE ); //celeste
  triangle( 290, 485, 190, 450, 300, 300);
  fill( #03ECFF ); //cyan
  triangle( 190, 450, 140, 370, 300, 300); 
  fill( #00A273 ); //verde azulado
  triangle( 140, 370, 130, 280, 300, 300);
  fill( #039530 ); //verde
  triangle( 130, 280, 155, 175, 300, 300 );
  fill( #13D311 ); //verde claro
  triangle( 155, 175, 260, 100, 300, 300 );

  noStroke();
  fill(#FFF703); //amarillo
  circle( 320, 75, 40);
  fill(#FF7003); //naranja
  circle( 440, 110, 20);
  fill(#F00000); //rojo
  circle( 515, 190, 40);
  fill(#FA0F65); //coral
  circle( 530, 285, 20);
  fill(#FF03D6); // magenta
  circle( 525, 375, 40);
  fill(#7600C6); //violeta 
  circle( 450, 460, 20);
  fill(#0016CB); //azul
  circle( 340, 510, 40);
  fill(#02BBDE); //celeste
  circle( 220, 490, 20);
  fill(#03ECFF);//cyan
  circle( 140, 425, 40);
  fill( #00A273); // verde azulado
  circle( 115, 335, 20);
  fill(#039530); //verde
  circle( 110, 235, 40);
  fill(#13D311); //verde claro
  circle( 185, 125, 20);
}
