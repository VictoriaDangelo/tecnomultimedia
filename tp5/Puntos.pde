//VARIABLE
int puntos = 0;

//clase puntos_____________________________

class Puntos {
  Puntos() {
  }

  void dibujar() {
    textSize (20);
    fill(255); 
    text("  Lingotes: "+puntos, 50, 30);

    println(puntos);
  }
}
