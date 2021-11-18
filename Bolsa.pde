class Bolsa {

  //CAMPOS (variables)____________________________________
  float x, y, t;
  int tam;
  int posY, posX;
  PImage bolsa;
  
  //CONSTRUCTOR
  Bolsa( float x_, float y_ ) {
    x = x_;
    y = y_ ;
    tam = 90; 
    bolsa = loadImage( "bolsa.png" );
   
  }
  //METODOS - (funciones)___________________________________
  void dibujar() {
    posX = mouseX;
    pushStyle();
    imageMode(CENTER);
    rectMode(CENTER);
    rect(posX, y, tam, tam);
    bolsa.resize(tam, tam);
    image(bolsa, posX, y);
    popStyle();
  }

  //COLISION 1                                   colision lingote oro = suma puntos
  void lingotes( Lingotes[] l ) { 
    for ( int i = 0; i < l.length; i++ ) { 

      if (l[i].obtenerX() > posX - tam/2 && l[i].obtenerX()< posX + tam/2 && l[i].obtenerY()> y - tam/2 && l[i].obtenerY()< y + tam/2 ) {// bolsa 
        puntos = puntos + 10; 
        l[i].reciclar(); 
        tam++;
      } 
      if (puntos > 100) { 
        juego.estado = "ganar";
      }
    } 
    //lingotes.play();
  }
  //COLISION 2                                 colision piedra = pierde
  void piedra( Piedra[] p) { 
    for ( int i = 0; i < p.length; i++ ) { 
      if (p[i].obtenerX() > posX - tam/2 && p[i].obtenerX()< posX + tam/2 && p[i].obtenerY()> y - tam/2 && p[i].obtenerY()< y + tam/2) { 
        t += p[i].tam;   
        p[i].reciclar(); 
        juego.estado = "perder";
      }
    }
  
    //--------------Sonido-------------
  //if (mouseX < width && mouseY < height) {
    //lingotes.play();
  //} else {
  //  lingotes.stop();
  }
}
