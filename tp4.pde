/*
 Tecnologia Multimedial| TP4 | Aventura Grafica
 "Las Aventuras del Gato con Botas"
 Alumna: D'ANGELO, Victoria |legajo (88529/7)
 Comision 2
 */
 
 //EXPLICACION DE CODIGO  https://youtu.be/pF8JrLHgMSM <-----
 
String [] texto = new String [30];
PImage [] imagenes = new PImage [19];
PFont fuente, fuente1; 
int estado;
int w = 135;
int h = 60;

void setup() {
  size(800, 450);
//                                    ---------- ARREGLOS---------

  //--------------- IMAGENES                            
  for (int i = 0; i < imagenes.length; i++) {
    imagenes[i] = loadImage("imagen"+i+".png");
  }
  
  //---------------TEXTOS
  texto [0] = " Hola, soy el gato con botas y en esta ocación \n tú decidiras mi destino a traves \n de una serie de deciciones..."; 
  texto [1] = "    Presiona barra ESPACIADORA para avanzar";
  texto [2] = "    Presiona tecla IZQUIERDA o DERECHA ";
  texto [3] = "INICIAR";
  texto [4] = "CRÉDITOS";
  texto [5] = "Salvarle la vida a un hechicero ";
  texto [6] = "Luchar contra ladrones";
  texto [7] = "    ELIGE UNA AVENTURA ";
  texto [8] = " Un hechicero se encuentra atrapado\n por una loca duquesa que quiere saber el   \n secreto de sus hechizos...";
  texto [9] = " Piensas rapidamente una solucion\n para ayudarlo a escapar...";
  texto [10] = "Te encuentras con un armario \nrepleto de pociones mágicas,\npero hay dos que te llaman la atención...";
  texto [11] = "    ¿Qué pocion eliges? "; 
  texto [12] = " La pocion verde hizo que caigan\n bolsas de maiz sobre a la duquesa\n quedó atrapada y no podrá salir... ";
  texto [13] = " Rapidamente ayudaste al hechicero\n a escapar, te da las gracias por ayudarlo...";
  texto [14] = "Esa no fue una buena pocion \n te convertio en burro...";
  texto [15] = "Ves a un grupo de ladrones \n intentando robar oro...";
  texto [16] = "Tienes una lucha contra ellos, \n ganás y recuperas el oro...";
  texto [17] = "Qué mal que tú tambien hayas robado el oro \n eres complice de esos ladrones... ";
  texto [18] = " Luego de devolver el oro, \n en el camino te encuentras a una joven \n la joven esta perdida...";
  texto [19] = "¿Quieres acompañarla a su casa?";
  texto [20] = " Acompañas a la joven a su casa como todo un\n caballero, ella te lo agradece...";
  texto [21] = "Eyyy dejar a una joven sola y perdida\n no fue una buena decicion de tu parte...";
  texto [22] = "    Presiona tecla ENTER para volver al inicio  "; 
  texto [23] = "   Realizado por:\n   D'ANGELO, Victoria. \n   Tecnología Multimedial 1 \n   Comision 2 \n   UNLP - FDA  2021 \n\n   Personajes: \n   Gato con Botas\n   Hechicero \n   Duquesa\n   Ladrones \n   Joven Gata";
  texto [24] = "    Las aventuras\n  del Gato con Botas  ";
  texto [25] = "  Si  ";
  texto [26] = "  No ";
  texto [27] = "¿Devolver el oro a su dueño?";
  texto [28] = "VERDE";
  texto [29] = "AZUL";

  //-----------FUENTES TIPOGRAFICAS
  fuente = loadFont("SitkaDisplay-48.vlw");
  textFont(fuente);
  fuente1 = loadFont("VinerHandITC-48.vlw");
  textFont(fuente1);

  frameRate(24);
  estado = 0;  // pantalla inicio
  
  if (frameCount % 60 == 0);
}
void draw() {  
  textoTeclas();
  textoBarra();
  dibujarPantallas(estado);
  textoNarrativa();
  textoDecision();
}
void mousePressed() {   

  if ( estado == 0 ) {
    if (mouseX>420 && mouseX<420 + w && 
      mouseY>180 && mouseY<180 + h) {  //BOTON JUGAR                  
      estado = 1;
    } else if (mouseX>610 && mouseX<610+ w && 
      mouseY>180 && mouseY<180+h ) {   //BOTON CREDITOS              
      estado = 17;
    }
  }
  println ("Estado: "+estado);
}
//                        ------------ FUNCIONES---------
//BOTONES EN EL INICIO
void dibujarBoton (int x, int y) {   
  noStroke();
  fill(224, 145, 41);
  rect(x, y, 135, 60);
  textFont(fuente);
  textSize(28);
  fill(255);
}
void creditos() {
  image(imagenes[17], 0, 0);
  pushStyle();
  textFont( fuente, 48);
  textSize(28);
  fill(0);
  text(texto [23], 410, frameCount%460);
  fill(255);
  text(texto [23], 412, frameCount%460);
  textSize(19);
  text(texto [22], 10, 430);
  popStyle();
}
void cuadroNarrativa() {
  pushStyle();
  fill(222);
  rect(30, 270, 325, 80);
  popStyle();
}
void textoBarra() {
  pushStyle();
  fill(255);
  textFont( fuente, 48);
  textSize(16);
  text(texto [1], 420, 432);
  popStyle();
}
void textoTeclas() {
  pushStyle();
  fill(255);
  textFont(fuente, 48);
  textSize(16);
  text(texto [2], 250, 430);
  popStyle();
}
void textoNarrativa() {
  textFont(fuente);
  fill(0);
  textSize(18);
}
void textoDecision() {
  textFont(fuente1, 48);
  fill(255);
  textSize(30);
}
