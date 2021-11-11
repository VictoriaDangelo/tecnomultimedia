//import processing.sound.*;
//SoundFile lingotes;
  
//void sonido(){
   //carga sonido
   //lingotes = new SoundFile(this, "lingotes.wav");

class Bolsa {
  //VARIABLES
  float x, y;
  int tam;
  int posY, posX;
  PImage bolsa;
  
  //CONSTRUCTOR
  Bolsa( float x_, float y_ ) {

    x = x_;
    y = y_ ;
    tam = 90; //tamaño bolsa
    
    bolsa = loadImage( "bolsa.png" );
  }
  //FUNCIONES
  void dibujar() {
    posX = mouseX;
    pushStyle();
    imageMode(CENTER);
    bolsa.resize(tam, tam);
    image(bolsa, posX, y);
    popStyle();
    
  }
  
  //COLISION 1                                    //lingote oro, suma puntos
  void lingotes( Lingotes[] l ) {
    for ( int i = 0; i < l.length; i++ ) {
      
      float d = dist( x, y, l[i].obtenerX(), l[i].obtenerY() );
      if ( d < 80 ) {
        tam ++;      
        puntos ++;
        l[i].reciclar();
        //juego.estado = "ganar";
      }
    }
  }
  //COLISION 2                                       //piedra, pierde
  void piedra( Piedra[] p) {
    for ( int i = 0; i < p.length; i++ ) {
      float d = dist( x, y, p[i].obtenerX(), p[i].obtenerY() );
      if ( d < 80 ) {  
        tam --; 
        puntos--;
        p[i].reciclar();
        juego.estado = "perder";
      
    }

    }
  }
  void teclaEspacio(float x_, float t_) {
    if ( key == ' '  ) {
      juego.estado = "jugar";      
    }
    if ( key == ' ' ) {
      juego.estado = "inicio";
}
  }
}
