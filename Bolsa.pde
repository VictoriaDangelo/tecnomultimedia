//import processing.sound.*;
//SoundFile lingotes;
  
//void sonido(){
   //carga sonido
   //lingotes = new SoundFile(this, "lingotes.wav");

class Bolsa {
  //VARIABLES
  float x, y, t;
  int tam;
  int posY, posX;
  
  PImage bolsa;
  //CONSTRUCTOR
  Bolsa( float x_, float y_, float t_ ) {
    // inicializo las propiedades
    x = x_;
    y = y_ ;
    t = t_;
    tam = 100;
    
  bolsa = loadImage( "bolsa.png" );
  }
  //FUNCIONES
  void dibujar() {
    bolsa.resize(tam, tam);
    posX = mouseX;
    image(bolsa, posX, y);
  }
  //COLISION1                                    //lingote oro, suma puntos
  void lingotes( Lingotes[] l ) {
    for ( int i = 0; i < l.length; i++ ) {
      float d = dist( x, y-t/10, l[i].x, l[i].y );
      if ( d < t/5 ) {
        t += l[i].tam;        
        puntos ++;
        l[i].reciclar();
        //juego.estado = "ganar";
      }
    }
        //lingotes.play();
  }

  //COLISION2                                              //piedra, pierde
  void piedra( Piedra[] p) {
    for ( int i = 0; i < p.length; i++ ) {
      float d = dist( x, y-t/10, p[i].x, p[i].y );
      if ( d < t/5 ) {  
        t += p[i].tam;  
        p[i].reciclar();
        juego.estado = "perder";
      }
    }
  }

 
  
  void teclaEspacio(float x_, float t_) {
    if ( key == ENTER ) {
      x = x_;
      t = t_;
      juego.estado = "jugar";      
    }
    if ( key == ENTER ) {
      x = x_;
      t = t_;
      juego.estado = "inicio";
    }
  }

}
