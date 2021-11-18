class Juego {

  //CAMPOS (variables)__________________________________________
  String estado;
  String [] texto = new String [5];
  PImage [] fondo = new PImage [4];
  PFont fuente;
  int w = 100;
  int h = 50;
  int c = 5; 
  Piedra[] piedra= new Piedra[c];
  Lingotes[] lingotes = new Lingotes[c];
  Bolsa bolsa;
  Puntos puntos;
  {
    //carga fuente
    fuente = loadFont("VinerHandITC-48.vlw");
    textFont(fuente);

    //textos 
    texto [0] = "Atrapa los lingotes de oro"; 
    texto [1] = "           PERDISTE :(\n   ¡Hey! no te desanimes... \n    Puedes volver a jugar";
    texto [2] = "        GANASTE :)  \n       ¡Honorabuena !";
    texto [3] = "Jugar";
    texto [4] = "Volver";
  }
  //CONSTRUCTOR____________________________
  Juego() {
    estado = "inicio";
    puntos= new Puntos();
    bolsa = new Bolsa( width/2, height-50);

    for ( int i = 0; i < lingotes.length; i++ ) {  //
      lingotes[i] = new Lingotes();
    }
    for ( int i = 0; i < piedra.length; i++ ) {
      piedra[i] = new Piedra();
    }
    for (int i = 0; i < fondo.length; i++) {
      fondo[i] = loadImage("fondo"+i+".png");
    }
  }
  //METODOS - (funciones)___________________________________
  void texto() {
    textFont(fuente, 48);
    textSize(33);
    fill(255);
  }
  void dibujar() {  //pantallas
    //ESTADO INICIAR
    if ( estado.equals("inicio")) {         
      image(fondo[1], 0, 0);
      texto();
      text(texto [0], 100, 70);
      text(texto [3], 410, 580);
    }
    //ESTADO PERDER
    if ( estado.equals( "perder") ) {
      image(fondo[2], 0, 0);
      texto();
      text(texto [1], 50, 260);
      text(texto [4], 400, 580);
    }
    //ESTADO GANAR
    if (estado.equals( "ganar") ) {
      image(fondo[3], 0, 0);
      texto();
      text(texto [2], 50, 260);
      text(texto [4], 400, 580);
    }
    //ESTADO JUGAR 
    if ( estado.equals( "jugar" ) ) {
      image(fondo[0], 0, 0);
      bolsa.dibujar();     
      for ( int i = 0; i < c; i++ ) {  
        lingotes[i].dibujar( true );
        piedra[i].dibujar( true);
      }
      puntos.dibujar();
    }
  }
  void actualizar() {

    if ( estado.equals( "jugar" ) ) {
      for ( int i = 0; i < piedra.length; i++ ) {  
        piedra[i].actualizar();
      }
      for ( int i = 0; i < lingotes.length; i++ ) {  
        lingotes[i].actualizar();
      }
      //COLISIONES
      bolsa.lingotes(lingotes);
      bolsa.piedra(piedra);
    }
  }
  void botones() {
    if (mouseX>width-200 && mouseY >height-100 && estado.equals("inicio"))  {
      estado = "jugar";
    }  
    if (mouseX>width-200 && mouseY >height-100 && estado.equals("ganar")) {
      estado = "inicio";
    }
    if (mouseX>width-200 && mouseY >height-100 && estado.equals("perder")) {
      estado = "inicio";
    }
  }
}
