class Piedra {
  //VARIABLES
  float x, y;
  float tam;
  float vel;
  PImage piedra;

  //CONSTRUCTOR ___________________________________________________________________

  Piedra( float y_, int id, boolean inv ) { 
    x = random( -20, width );
    y = y_;
    tam = random( 40, 80 );
    vel = random( 3, 8 );

    //carga de las imagenes
    piedra = loadImage( "piedra.png" );  
    piedra.resize( int(tam), int(tam) );
  }
  
  //FUNCIONES________________________________________________________________________
  
  void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
  void dibujar() {
    image( piedra, x, y );
  }
  void reciclar() {
    x = random( width );
    y = -100;
    tam = random( 50, 100 );
    vel = random( 4, 6 );
  }
}
