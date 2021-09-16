/*
 Tecnologia Multimedial| TP4 | Aventura Grafica.
 "Las Aventuras del Gato con Botas".
 Alumna: D'ANGELO, Victoria |legajo (88529/7)
 Comision 2.
 */

//LINK EXPLICACION : https://www.youtube.com/watch?v=Bud0lxcVFZ0  <---

PImage [] imagenes = new PImage [19];

int estado;
PFont fuente, fuente1; 

int w = 135;
int h = 60;

void setup() {
  size(800, 450);

  //CARGA DE IMAGENES
  for (int i = 0; i < imagenes.length; i++) {
    imagenes[i] = loadImage("imagen"+i+".png");
  }
  
  //CARGA DE FUENTE 
  fuente = loadFont("SitkaDisplay-48.vlw");
  textFont(fuente);

  fuente1 = loadFont("VinerHandITC-48.vlw");
  textFont(fuente1);

  frameRate(24);

  estado = 0;  // pantalla inicio
}

void draw() {  // Pantallas del juego

  if (frameCount % 60 == 0);

  // INICIO- MENU
  if (estado == 0) {              
    image(imagenes[0], 0, 0);

    opcion(420, 180);              //boton jugar
    opcion(610, 180);              //boton creditos

    textFont( fuente, 48);
    fill(255);
    textSize(28);
    text("INICIAR", 445, 220);
    text("CRÉDITOS", 621, 220);
  }
  //PRESENTACIÓN

  if (estado == 1) {  
    image(imagenes[1], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(420, 330, 350, 80);
    fill(0);
    textSize(18);
    text(" Hola, soy el gato con botas y en esta ocación \n tú decidiras mi destino a traves \n de una serie de deciciones...", 430, 350);
    fill(255);
    textSize(16);
    text("    Presiona barra ESPACIADORA para avanzar", 420, 432);
  }

  //ELEGIR AVENTURA
  if (estado == 2) { 
    image(imagenes[2], 0, 0);
    textFont( fuente, 48);
    fill(255);
    textSize(18);
    text("Salvarle la vida a un hechicero ", 90, 100);
    text("Luchar contra ladrones", 490, 100);
    textSize(16);
    text("    Presiona tecla IZQUIERDA o DERECHA ", 240, 412);
    textFont( fuente1, 48);
    textSize(30);
    text("    ELIGE UNA AVENTURA ", 180, 50);
  }
  //HECHICER0 ATRAPADO 1/2
  if (estado == 3) {
    image(imagenes[3], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(30, 350, 320, 80);
    fill(0);
    textSize(17);
    text(" Un hechicero se encuentra atrapado\n por una loca duquesa que quiere saber el   \n secreto de sus hechizos...", 45, 370);
    fill(255);
    textSize(16);
    text("    Presiona barra ESPACIADORA para avanzar", 420, 432);
  }
  //HECHICERO ATRAPADO 2/2
  if (estado == 4) {
    image(imagenes[4], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(30, 350, 320, 80);
    fill(0);
    textSize(17);
    text(" Piensas rapidamente una solucion\n para ayudarlo a escapar...", 45, 370);
    fill(255);
    textSize(17);
    text("    Presiona barra ESPACIADORA para avanzar", 420, 432);
  }

  // ARMARIO CON POCIONES 
  if (estado == 5) {
    image(imagenes[5], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(30, 350, 320, 80);
    fill(0);
    textSize(17);
    text("Te encuentras con un armario \nrepleto de pociones mágicas,\npero hay dos que te llaman la atención...", 45, 370);
    fill(255);
    textSize(16);
    text("    Presiona barra ESPACIADORA para avanzar", 420, 432);
  }
  //ELEGIR POCION
  if (estado == 6) {
    image(imagenes[6], 0, 0);
    textFont( fuente, 48);
    textSize(28);
    fill(34, 164,56);
    text("VERDE", 180, 410);
    fill(22, 240,227);
    text("AZUL", 560, 420);
    textSize(16);
    fill(255);
    text("    Presiona tecla IZQUIERDA o DERECHA ", 260, 435);
    textFont( fuente1, 48);
    textSize(30);
    text("    ¿Qué pocion eliges? ", 220, 70);
  }
  // POCION VERDE 1/2        
  if (estado == 7) {
    image(imagenes[8], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(30, 100, 320, 80);
    fill(0);
    textSize(17);
    text(" La pocion verde hizo que caigan\n bolsas de maiz sobre a la duquesa\n quedó atrapada y no podrá salir... ", 45, 120);
    fill(255);
    textSize(16);
    text("    Presiona barra ESPACIADORA para avanzar", 420, 432);
  }
  //final POCION VERDE 2/2    
  if (estado == 8) {
    image(imagenes[9], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(30, 100, 320, 80);
    fill(0);
    textSize(17);
    text(" Rapidamente ayudaste al hechicero\n a escapar, te da las gracias por ayudarlo...", 42, 120);
    fill(255);
    textSize(16);
    text("    Presiona barra ESPACIADORA para avanzar", 420, 432);
  }
  //final POCION AZUL       
  if (estado == 9) {
    image(imagenes[7], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(30, 350, 320, 80);
    fill(0);
    textSize(18);
    text("Esa no fue una buena pocion \n te convertio en burro...", 45, 380);
    fill(255);
    textSize(16);
    text("    Presiona la barra ESPACIADORA para avanzar", 420, 432);
  }
  // AVENTURA LADRONES
  if (estado == 10) { 
    image(imagenes[10], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(30, 350, 320, 80);
    fill(0);
    textSize(17);
    text("Ves a un grupo de ladrones \n intentando robar oro...", 45, 380);
    fill(255);
    textSize(16);
    text("    Presiona barra ESPACIADORA para avanzar", 420, 432);
  } 
  //LUCHAS CON LOS LADRONES 
  if (estado == 11) {                           
    image(imagenes[11], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(30, 350, 320, 80);
    fill(0);
    textSize(17);
    text("Tienes una lucha contra ellos, \n ganás y recuperas el oro...", 45, 380);
    fill(255);
    textSize(17);
    text("    Presiona barra ESPACIADORA para avanzar", 460, 432);
  }
  //FINAL - QUEDARTE CON EL ORO
  if (estado == 12) { 
    image(imagenes[15], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(30, 100, 320, 80);
    fill(0);
    textSize(17);
    text("Qué mal que tú tambien hayas robado el oro \n eres complice de esos ladrones... ", 42, 130);
    fill(255);
    textSize(16);
    text("    Presiona barra ESPACIADORA para avanzar", 420, 432);
  }
  //DEVOLVER ORO - TE ENCONTRAS CON UNA JOVEN
  if (estado == 13) { 
    image(imagenes[12], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(30, 350, 320, 80);
    fill(0);
    textSize(17);
    text(" Luego de devolver el oro, \n en el camino te encuentras a una joven \n la joven esta perdida...", 45, 380);
    fill(255);
    textSize(17);
    text("    Presiona barra ESPACIADORA para avanzar", 420, 432);
  }
  //DECISION DE ACOMAPAÑAR 
  if (estado == 14) { 
    image(imagenes[13], 0, 0);
    textFont( fuente1, 48);
    fill(255);
    textSize(36);
    text("Si ", 30, 420);
    text("No ", 700, 420);
    textFont( fuente, 48);
    textSize(16);
    text("   Presiona tecla IZQUIERDA o DERECHA ", 220, 430);
    textFont( fuente1, 48);
    textSize(37);
    text("¿Quieres acompañarla a su casa?", 120, 45);
  }   
  // SI ACOMPAÑAR 
  if (estado == 15) { 
    image(imagenes[14], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(30, 350, 320, 80);
    fill(0);
    textSize(17);
    text(" Acompañas a la joven a su casa\n como todo un caballero, \n ella te lo agradece...", 45, 370);
    fill(255);
    textSize(16);
    text("    Presiona barra ESPACIADORA para avanzar", 420, 432);
  }  
  // NO ACOMPAÑAR
  if (estado == 16) { 
    image(imagenes[16], 0, 0);
    textFont( fuente, 48);
    fill(222);
    rect(30, 350, 320, 80);
    fill(0);
    textSize(17);
    text("Eyyy dejar a una joven sola y perdida\n no fue una buena decicion de tu parte...", 45, 370);
    fill(255);
    textSize(16);
    text("    Presiona barra ESPACIADORA para avanzar", 420, 432);
  }
  // CREDITOS FINALES
  if (estado == 17) {              
    image(imagenes[17], 0, 0);
    textFont( fuente, 48);
    fill(255);
    textSize(19);
    text("    Presiona tecla ENTER para volver al inicio  ", 10, 430);
    fill(0);
    textSize(28);
    text("   Realizado por:\n   D'ANGELO, Victoria. \n   Tecnología Multimedial 1 \n   Comision 2 \n   UNLP - FDA  2021 \n\n   Personajes: \n   Gato con Botas\n   Hechicero \n   Duquesa\n   Ladrones \n   Joven Gata", 410, frameCount%460);
    fill(255);
    text("   Realizado por:\n   D'ANGELO, Victoria. \n   Tecnología Multimedial 1 \n   Comision 2 \n   UNLP - FDA  2021 \n\n   Personajes: \n   Gato con Botas\n   Hechicero \n   Duquesa\n   Ladrones \n   Joven Gata", 412, frameCount%460);
    fill(0);
    textFont( fuente1, 48);
    textSize(26);
    text("    Las aventuras\n  del Gato con Botas  ", 19, 65);
    textFont( fuente1, 48);
    textSize(26);
    fill(255);
    text("    Las aventuras\n  del Gato con Botas  ", 21, 65);
  }
  // DESICION  devolver el oro?
  if (estado == 18) {                           
    image(imagenes[18], 0, 0);
    textFont( fuente, 48);
    textSize(16);
    text("    Presiona tecla IZQUIERDA o DERECHA ", 250, 435);  
    textFont( fuente1, 48);
    fill(255);
    textSize(33);
    text("  Si  ", 40, 425);
    text("  No  ", 700, 420);
    textSize(35);
    text("¿Devolver el oro a su dueño?", 160, 60);
   
}
}

void keyPressed() {  ///////FUNCION cambio de pantallas con el teclado

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
void mousePressed() {    //////////////FUNCION DE LOS BOTONES al presionar mouse 

  if ( estado == 0 ) {
    if (mouseX>420 && mouseX<420 + w && 
        mouseY>180 && mouseY<180 + h) {         //BOTON JUGAR               opcion(420, 180);         
      estado = 1;
    } else if (mouseX>610 && mouseX<610+ w && 
               mouseY>180 && mouseY<180+h ) {   //BOTON CREDITOS            opcion(610, 180);           
      estado = 17;
    }  
  }
  println ("Estado: "+estado);
}

///////////////////////DIBUJA BOTONES DE OPCIONES
void opcion(int x, int y) {   
  noStroke();
  fill(224, 145, 41);
  rect(x, y, 135, 60);
}
