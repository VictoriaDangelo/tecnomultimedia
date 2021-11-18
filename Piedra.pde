class Piedra {

  //CAMPOS (variables)______________________________________
  float x, y;
  float tam;
  float vel;
  PImage piedra;

  //CONSTRUCTOR ____________________________________________
  Piedra() { 
    x = random( -20, width );
    y = -100;
    tam = random( 30, 70 );
    vel = random( 1, 3 );

    //carga de las imagenes
    piedra = loadImage( "piedra.png" );  
    piedra.resize( int(tam), int(tam) );
  }

  //FUNCIONES______________________________________________________________
  void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
  void dibujar(boolean conImagen) {
    pushStyle();
    rectMode(CENTER);
    rect( x, y, piedra.width, piedra.height);
    imageMode(CENTER);
    image( piedra, x, y );
    popStyle();
  }
  void reciclar() {
    x = random( width );
    y = -100;
    tam = random( 40, 80 );
    vel = random( 1, 4 );
  }
  float obtenerX() {
    return x;
  }
  float obtenerY() {
    return y;
  }
}
