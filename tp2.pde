/*
 Tecnologia Multimedial| TP2 |Animacion de Creditos.
 Pelicula: "The Lion King" (El Rey Leon)
 Alumna: D'ANGELO, Victoria |legajo (88529/7)
 Comision 2.
 */
String waltDisney, directed, producer, filmEditor, music, screenPlay, credits;
PFont fuente;
PImage fondo, fondo1, fondo2, fondo3, fondo4, fondo5, fondo6, fondo7, fondo8;
float py = 300;
int mv = 400, mv1 = 0, mv2 = 700; 
int seg;

void setup() {
  size(700, 400);

  //carga de texto creditos
  waltDisney ="Walt Disney \n Pictures"; 
  directed = "DIRECTED BY \n Roger Allers \n and \n Rob Minkoff" ;
  producer = "PRODUCER BY \n Don Hahn";
  filmEditor = "  FILM EDITOR \n Ivan Bilanco";
  music = "  MUSIC \n Elton John \n Tim Rice";
  screenPlay = "   SCREENPLAY \n Irene Meechi \n Jonathan Roberts";
  credits = "  CREDITS \n Macarena Poo";

  //carga de imagenes de fondo y fuentes
  fondo  = loadImage( "fondo.png" );
  fondo1 = loadImage( "fondo1.png" );
  fondo2 = loadImage( "fondo2.png" ); 
  fondo3 = loadImage( "fondo3.png" ); 
  fondo4 = loadImage( "fondo4.png" ); 
  fondo5 = loadImage( "fondo5.png" ); 
  fondo6 = loadImage( "fondo6.png" );
  fondo7 = loadImage( "fondo7.png" );
  fondo8 = loadImage( "fondo8.png" );
  fuente = loadFont( "Lion_kinG-48.vlw" );
  frameRate(28);
}

void draw() {

  //-----Pantallas----

  //Pantalla 1- titulo- africa
  float leon = map (py, 300, 90, 0, 255);

  py = py-2;
  mv--;
  mv1++; 
  mv2--;

  image(fondo, 0, 0);
  textFont( fuente, 48);
  textSize(35);
  fill(0, leon);
  text("THE", 303, 90);
  textSize(60);
  text(" Lion kinG", 193, 150);
  fill(255, 255, 255, leon);
  textSize(35);
  text("THE", 300, 90);
  textSize(60);
  text(" Lion kinG", 190, 150);
  println("The Lion King");

  if (frameCount % 60 == 0);
  {
    seg ++;
    //Pantalla 2- elefantes
  } 
  if (seg >120  && seg <=240) {
    image(fondo1, 0, 0);
    textFont(fuente, 48);
    textSize(48);
    fill(0);
    text( waltDisney, 340, mv1+0);
    fill(255, 255, 255);
    textAlign(CENTER);
    text( waltDisney, 343, mv1+0); 


    //Pantalla 3- monos1
  } else if (seg > 240 && seg <=360) {
    image(fondo6, 0, 0);
    textFont(fuente, 48);
    textSize(40);
    fill(0);
    text( producer, 163, mv+190);
    fill(255,255,255);
    text( producer, 160, mv+190 );
 

    //Pantalla 4- monos2
  } else if (seg > 360 && seg<=480) {   
    image( fondo7, 0, 0);
    textFont(fuente, 48);
    textSize(39);
    fill(0);
    text( directed,mv2+243,200);
    fill(255, 255, 255);
    text( directed,mv2+240,200);


    //Pantalla 5 - hipopotamo
  } else if (seg> 480 && seg <=600) {   
    image( fondo2, 0, 0);
    textFont(fuente, 48);
    textSize(40);
    fill(0);
    text( screenPlay, mv2+380,53);
    fill(255, 255, 255);
    text( screenPlay, mv2+380,50);


    //Pantalla 6 - cocodrilo
  } else if (seg> 600 && seg <=720) {   
    image( fondo3, 0, 0);
    textFont(fuente, 48);
    textSize(40);
    fill(0);
    text( filmEditor, frameCount%181, 170);
    fill(255, 255, 255);
    text( filmEditor, frameCount%180, 170);


    //Pantalla 7 - rinoceronte
  } else if (seg> 720 && seg <=840) {   
    image( fondo4, 0, 0);
    textFont(fuente, 48);
    textSize(40);
    fill(0);
    text(music, 543, frameCount%180+ 180);
    fill(255, 255, 255);
    text(music, 540, frameCount%180+ 180);


    //Pantalla 8 -jirafa
  } else if (seg> 840 && seg <=960) {   
    image( fondo5, 0, 0);
    textFont(fuente, 48);
    textSize(40);
    fill(0);
    text(credits, mv2+683,340);
    fill(255, 255, 255);
    text(credits,mv2+680,340);


    //Pantalla 9 - castillo disney - fin.
  } else if (seg> 960 && seg <=1080) {
    image( fondo8, 0, 0);
  } else if (seg> 1000) {
    background(0);
  }
}
