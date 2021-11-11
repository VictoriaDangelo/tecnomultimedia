class Piedra {
  //VARIABLES
  float x, y;
  float tam;
  float vel;
  PImage piedra;

  //CONSTRUCTOR ___________________________________________________________________

  Piedra(  ) { 
    x = random( -20, width );
    y = -100;
    tam = random( 30, 70 );
    vel = random( 1, 3 );

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
  void dibujar(boolean conImagen) {
    image( piedra, x, y );
  }
  void reciclar() {
    x = random( width );
    y = -100;
    tam = random( 40, 80 );
    vel = random( 1, 5 );
  }
  float obtenerX() {
    return x;
  }
  float obtenerY() {
    return y;
  }
}
