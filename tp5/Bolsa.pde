class Bolsa {
  //VARIABLES
  float x, y, t;
  int tam;
  PImage bolsa;
  //CONSTRUCTOR
  Bolsa( float x_, float y_, float t_ ) {
    // inicializo las propiedades
    x = x_;
    y = y_ ;
    t = t_;
    tam = 100;
  }
  //FUNCIONES
  void dibujar() {
    bolsa = loadImage( "bolsa.png" );
    bolsa.resize(tam, tam);
    image(bolsa, x, y);
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

  //FUNCIONES DE LAS TECLAS                                 //cambiar a mouse
  void moverIzq() {
    if ((keyCode == LEFT)) {
      if (x >= -10) { //limita el margen de la pantalla para q el pj no se salga
        x= x-8;
      }
    }
  }
  void moverDer() {
    if ((keyCode == RIGHT)) {
      if (x <= 680) {//limita el margen de la pantalla para q el pj no se salga
        x=x+8;
      }
    }
  }
  void teclaEspacio(float x_, float t_) {
    if ( key == ' ' ) {
      x = x_;
      t = t_;
      juego.estado = "jugar";
    }
    if ( key == ' ' ) {
      x = x_;
      t = t_;
      juego.estado = "inicio";
    }
  }
}
