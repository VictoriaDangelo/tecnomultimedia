class Juego {
  //VARIABLES___________________________
  String estado;
  PImage [] fondo = new PImage [4];
  PFont fuente;
  Bolsa bolsa;
  Puntos puntos;
  int c = 8; 
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
}
  //FUNCIONES___________________________________
  void texto () {
    textFont(fuente, 48);
    textSize(24);
    fill(255);
  }
  void dibujar() {
    
    //ESTADO INICIAR
    if ( estado.equals("inicio")) {         
      image(fondo[1], 0, 0);
      text("   Atrapa los lingotes de oro \n  Presiona 'barra espaciadora' \n  para jugar", 20, 150);
    }
    //ESTADO PERDER
    if ( estado.equals( "perder") ) {
      image(fondo[2], 0, 0);
      texto();
      text("    Perdiste! :(\n   Presiona 'barra espaciadora'  \n    para volver a jugar", 250, 180);
    }

    //ESTADO GANAR
    if (estado.equals( "ganar") ) {
      image(fondo[3], 0, 0);
      textSize(30);
      fill(255);
      text("      Ganaste, ¡HONORABUENA!", 100, 200);
    }

    //ESTADO JUGAR 
    if ( estado.equals( "jugar" ) ) {
      image(fondo[0], 0, 0);
      bolsa.dibujar();     
      for ( int i = 0; i < c; i++ ) {  
        lingotes[i].dibujar( true );
          piedra[i].dibujar();
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
  void tecla() {
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
