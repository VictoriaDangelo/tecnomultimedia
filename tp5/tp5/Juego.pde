class Juego {

  //VARIABLES
  String estado;
  PImage [] fondo = new PImage [4];
  PFont fuente;
  Bolsa bolsa;
  Puntos puntos;
  int c = 8; 
  Piedra[] piedra= new Piedra[c];
  Lingotes[] lingotes = new Lingotes[c];

  //CONSTRUCTOR
  Juego() {
    estado = "inicio";
    puntos= new Puntos();
    bolsa = new Bolsa( width/2, height/4*3, width/8 );

    for ( int i = 0; i < lingotes.length; i++ ) {
      lingotes[i] = new Lingotes( -100, i, true );
    }
    for ( int i = 0; i < piedra.length; i++ ) {
      piedra[i] = new Piedra( -100, i, true );
    }
    for (int i = 0; i < fondo.length; i++) {
      fondo[i] = loadImage("fondo"+i+".png");
    }
    fuente = loadFont("VinerHandITC-48.vlw");
    textFont(fuente);
  }
  //FUNCIONES
  void texto () {
    textFont(fuente, 48);
    textSize(22);
    fill(255);
  }

  void dibujar() {
    //Estado inicio
    if ( estado.equals("inicio")) {         //hacer boton
      image(fondo[1], 0, 0);
      text("      Atrapa los lingotes de oro \n  Presiona 'barra espaciadora' para jugar", 30, 200);
    }

    //Estado perder
    if ( estado.equals( "perder") ) {
      image(fondo[2], 0, 0);
      texto();
      text("      Perdiste! :(\n   Presiona 'barra espaciadora' para volver a jugar", 120, 200);
    }

    //Estado ganar
    if (estado.equals( "ganar") ) {
      image(fondo[3], 0, 0);
      textSize(30);
      fill(255);
      text("      Ganaste, ¡HONORABUENA!", 100, 200);
    }

    //Estado jugar
    if ( estado.equals( "jugar" ) ) {
      image(fondo[0], 0, 0);
      bolsa.dibujar();     
      for ( int i = 0; i < c; i++ ) {  
        lingotes[i].dibujar( true );
        piedra[i].dibujar( true );
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
      //Colisiones
      bolsa.lingotes(lingotes);
      bolsa.piedra(piedra);
    }
  }

  //Función teclas
  void teclas() {
    bolsa.moverDer();
    bolsa.moverIzq();
    bolsa.teclaEspacio(width/2, width/4);

    //Función de espacio para pasar de estados
    if ( key == ' ' ) {  
      if ( estado == "inicio" ) {
        estado = "jugar";
      }
    }
    if ( key == ' ' ) {  
      if ( estado == "perder" ) {
        estado = "jugar";
      }
    }
  }
}
