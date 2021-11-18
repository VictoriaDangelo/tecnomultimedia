class Lingotes {

  //CAMPOS (variables) _____________________________________________
  float x, y;
  float tam;
  float vel;
  PImage lingotes;

  //CONSTRUCTOR ___________________________________________
  Lingotes() {  

    x = random( -40, width );
    y = -100;
    tam = random( 30, 50 );
    vel = random( 1, 3 );
    lingotes = loadImage( "lingotes.png" ); 
    lingotes.resize( int(tam), int(tam) );
  }

  //FUNCIONES______________________________________________

  void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
  void dibujar( boolean conImagen ) {
    pushStyle();
    rectMode(CENTER);
    rect( x, y, lingotes.width, lingotes.height);
    imageMode(CENTER);
    image( lingotes, x, y );
    popStyle();
  }
  void reciclar() {
    x = random( width );
    y = -100; //que se recicle apenas colisionan
    tam = random( 30, 50 );
    vel = random( 1, 4 );
  }
  float obtenerX() {
    return x;
  }
  float obtenerY() {
    return y;
  }
}
