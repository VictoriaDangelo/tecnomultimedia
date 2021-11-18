//VARIABLE
int puntos = 0;

class Puntos {
  Puntos() {
  }

  void dibujar() {
    textSize (30);
    fill(255); 
    text("  Lingotes: "+puntos, 20, 40);

    println(puntos);
  }
}
