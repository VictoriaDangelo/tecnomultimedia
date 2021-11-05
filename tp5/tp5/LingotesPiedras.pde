class Lingotes {
  //VARIABLES _____________________________________________
  float x, y;
  float tam;
  float vel;
  PImage lingotes;

  //CONSTRUCTOR ___________________________________________
  Lingotes( float y_, int id, boolean inv ) {  
 
    x = random( -40, width );
    y = y_;
    tam = random( 40, 80 );
    vel = random( 1, 3 );
    //carga de las imagenes
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
    image( lingotes, x, y );
  }
  void reciclar() {
    x = random( width );
    y = -100;
    tam = random( 40, 80 );
    vel = random( 1, 3 );
  }
}
//clase piedra________________________________________________________________________________

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
  void dibujar( boolean conImagen ) {
    image( piedra, x, y );
  }
  void reciclar() {
    x = random( width );
    y = -100;
    tam = random( 50, 100 );
    vel = random( 4, 6 );
  }
}
