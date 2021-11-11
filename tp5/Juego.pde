class Juego {

  //VARIABLES___________________________
  String estado;
  PFont fuente;
  Bolsa bolsa;
  Puntos puntos;
  int c = 6; 
  PImage [] fondo = new PImage [4];
  Piedra[] piedra= new Piedra[c];
  Lingotes[] lingotes = new Lingotes[c];
  {
    
    
    fuente = loadFont("VinerHandITC-48.vlw");
    textFont(fuente);
  }
  //CONSTRUCTOR____________________________
  Juego() {
    estado = "inicio";
    puntos= new Puntos();
    bolsa = new Bolsa( width/2, height-90);

    for ( int i = 0; i < lingotes.length; i++ ) {
      lingotes[i] = new Lingotes();
    }
    for ( int i = 0; i < piedra.length; i++ ) {
      piedra[i] = new Piedra();
    }
    for (int i = 0; i < fondo.length; i++) {
      fondo[i] = loadImage("fondo"+i+".png");
    }
  }
  //FUNCIONES___________________________________
  void texto() {
    textFont(fuente, 48);
    textSize(34);
    fill(255);
  }
  void dibujar() {

    //ESTADO INICIAR
    if ( estado.equals("inicio")) {         
      image(fondo[1], 0, 0);
      texto();
      text("   Atrapa los lingotes de oro", 60, 70);
      textSize(20);
      text("   Presiona 1 para jugar", 85, 110);
    }
    //ESTADO PERDER
    if ( estado.equals( "perder") ) {
      image(fondo[2], 0, 0);
      texto();
      text("    Perdiste! :(\n    Presiona '2'  \n    para volver a jugar", 50, 260);
    }

    //ESTADO GANAR
    if (estado.equals( "ganar") ) {
      image(fondo[3], 0, 0);
      texto();
      text("      GANASTE  \n       ¡Honorabuena !", 50, 260);
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
  void tecla() {
    bolsa.teclaEspacio(width/2, width/4);

   //funcion del teclado                               poner botones
    if ( key == '1' && estado== "inicio"  ) {  
        estado = "jugar";
        
    }
    if ( key == '2' ) {  
      if ( estado == "perder" ) {
        estado = "inicio";
      }
    }
  }
}
