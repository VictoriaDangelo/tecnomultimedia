//------ CONTENIDO DE LAS PANTALLAS------
 
void dibujarPantallas(int estado){      
  if (estado == 0) {  
    image(imagenes[0], 0, 0);
    dibujarBoton(420, 180); 
    dibujarBoton(610, 180);  
    text(texto [3], 445, 220);
    text(texto [4], 621, 220);
  }
  //PRESENTACIÓN
  if (estado == 1) { 
    image(imagenes[1], 0, 0);
    cuadroNarrativa();
    textoBarra();
    textoNarrativa();
    text(texto [0], 35, 290);   
  }
  //ELEGIR AVENTURA
  if (estado == 2) { 
    image(imagenes[2], 0, 0);
    textoTeclas();
    textoNarrativa();
    fill(255);
    text(texto [5], 90, 100);
    text(texto [6], 490, 100);
    textoDecision();
    text(texto [7], 180, 50);
  }
  //HECHICER0 ATRAPADO 1/2
  if (estado == 3) {
    image(imagenes[3], 0, 0);
    cuadroNarrativa();
    textoBarra();
    textoNarrativa();
    text(texto [8], 35, 290);  
  }
  //HECHICERO ATRAPADO 2/2
  if (estado == 4) {
    image(imagenes[4], 0, 0);
    cuadroNarrativa();
    textoNarrativa();
    textoBarra();
    text(texto [9], 35, 290);  
  }
  // ARMARIO CON POCIONES 
  if (estado == 5) {
    image(imagenes[5], 0, 0);
    cuadroNarrativa();
    textoBarra();
    textoNarrativa();
    text(texto [10], 35, 290);   
  }
  //ELEGIR POCION
  if (estado == 6) {
    image(imagenes[6], 0, 0);
    textoTeclas();
    textoNarrativa();
    fill(34,164,56);    //pocion verde
    textSize(30);
    text(texto [28], 175, 410);
    fill(22, 240,227);  //pocion azul
    text(texto [29], 560, 420);
    textoDecision();
    text(texto [11], 220, 70);
  }
  // POCION VERDE 1/2        
  if (estado == 7) {
    image(imagenes[8], 0, 0);
    textoBarra();
    cuadroNarrativa();
    textoNarrativa();
    text( texto [12], 35, 290);  
  }
  // POCION VERDE 2/2    
  if (estado == 8) {
    image(imagenes[9], 0, 0);
    textoBarra();
    cuadroNarrativa();
    textoNarrativa();
    text(texto [13], 35, 290);   
  }
  //POCION AZUL       
  if (estado == 9) {
    image(imagenes[7], 0, 0);
    textoBarra();
    cuadroNarrativa();
    textoNarrativa();
    text(texto [14], 35, 290);
  }
  // AVENTURA LADRONES
  if (estado == 10) { 
    image(imagenes[10], 0, 0);
    cuadroNarrativa();
    textoBarra();
    textoNarrativa();
    text(texto [15], 35, 290);   
  } 
  //LUCHA CON LOS LADRONES 
  if (estado == 11) {                           
    image(imagenes[11], 0, 0);
    textoBarra();
    cuadroNarrativa();
    textoNarrativa();
    text(texto [16], 35, 290);  
  }
  //QUEDARTE CON EL ORO
  if (estado == 12) { 
    image(imagenes[15], 0, 0);
    textoBarra();
    cuadroNarrativa();
    textoNarrativa();
    text(texto [17],35, 290 );   
  }
  //DEVOLVER ORO
  if (estado == 13) { 
    image(imagenes[12], 0, 0);
    textFont( fuente, 48);
    cuadroNarrativa();
    textoBarra();
    textoNarrativa();
    text(texto [18], 35, 290);  
  }
  //DECISION DE ACOMAPAÑAR 
  if (estado == 14) { 
    image(imagenes[13], 0, 0);
    textoTeclas();
    text(texto [25], 30, 420);
    text(texto [26], 700, 420);
    textoDecision();
    text(texto [19], 160, 45);
  }   
  // SI ACOMPAÑAR 
  if (estado == 15) { 
    image(imagenes[14], 0, 0);
    cuadroNarrativa();
    textoBarra();
    textoNarrativa();
    text(texto [20], 35, 290);   
  }  
  // NO ACOMPAÑAR
  if (estado == 16) { 
    image(imagenes[16], 0, 0);
    cuadroNarrativa();
    textoBarra();
    textoNarrativa();
    text(texto [21], 35, 290);   
  }
  // CREDITOS FINALES
  if (estado == 17) {              
     creditos();  
  }
  //¿DEVOLVER DINERO?
  if (estado == 18) {                           
    image(imagenes[18], 0, 0);
    textoTeclas(); 
    textoDecision();
    text(texto [25], 40, 425);
    text(texto [26], 700, 420);
    textoDecision();
    text(texto [27], 160, 60);  
}
}
void keyPressed() {  /////CAMBIO DEL ESTADO DE PANTALLLAS

  if (estado == 1 && keyCode == ' ') {
    estado = 2;
  } else if (estado == 17 && keyCode == ENTER) {
    estado = 0;
  } else if (estado == 3 && keyCode == ' ') {
    estado = 4;
  } else if (estado == 2 && keyCode == LEFT) {
    estado = 3;
  } else if (estado ==2 && keyCode == RIGHT) {
    estado =10;
  } else if (estado == 3 && keyCode == ' ') {
    estado = 4;
  } else if (estado == 5 && keyCode == ' ') {
    estado = 6;
  } else if (estado == 4 && keyCode == ' ') {
    estado = 5;
  } else if (estado == 6 && keyCode == LEFT) {
    estado = 7;
  } else if (estado == 6 && keyCode == RIGHT) {
    estado = 9;
  } else if (estado == 9 && keyCode == ' ') {
    estado = 17;
  } else if (estado == 7 && keyCode == ' ') {
    estado = 8;
  } else if (estado == 8 && keyCode == ' ') {
    estado = 17;
  } else if (estado == 10 && keyCode == ' ') {
    estado = 11;
  } else if (estado == 11 && keyCode == ' ') {
    estado = 18;  
  } else if (estado == 12 && keyCode == ' ') {
    estado = 17;
  } else if (estado == 13 && keyCode == ' ') {
    estado = 14;
  } else if (estado == 14 && keyCode == LEFT) {
    estado = 15;
  } else if (estado == 14 && keyCode == RIGHT) {
    estado = 16;
  } else if (estado == 16 && keyCode == ' ') {
    estado = 17;
  } else if (estado == 15 && keyCode == ' ') {
    estado = 17;
  } else if (estado == 18 && keyCode == LEFT) {
    estado = 13;
  } else if (estado == 18 && keyCode == RIGHT) {
    estado = 12;
 }  
}
