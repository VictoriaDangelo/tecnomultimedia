/*Tecnologia Multimedial |TP3| ILUSION OPTICA INTERACTIVA
 Alunma: D'Angelo, Victoria (88529/7) Comision 2 */
 
//VIDEO EXPLICATIVO: https://www.youtube.com/watch?v=zCcx6N8YgxM

//hacer clicks para que aparezca la ilusion- con R renicia lineas

int ancho = 120 ;
int largo =150; 
int rojo, verde, azul, violeta, circulo;
int grosorLineas = 0;

void setup() {
  size(300, 400);
  frameRate(28);
  background(255);

  rojo= color(240, 46, 46 );
  azul= color( 65, 23, 255);
  verde= color(0, 255, 0);
  violeta= color(144, 0, 234);

}
void draw() {

  //______________________________________
  //lineas azules
  strokeWeight(grosorLineas);
  for (int a = 0; a < 160; a += 20) {
    stroke(azul);
    line(a, 0, a, 400);
  }
  //lineas violeta
  for (int vi = 10; vi < 170; vi += 20) {
    strokeWeight(grosorLineas);
    stroke(violeta);
    line(vi, 0, vi, 400);
  }
  //elipse 1
  fill(random(235,251),random(200,235),random(110,131));
  noStroke();
  ellipse(80, 200, ancho, largo);

  //lineas rojas
  for (int r = 5; r < 150; r += 20) {
    strokeWeight(grosorLineas);
    stroke(rojo);
    line(r, 0, r, 400);
  }
  //lineas rojas
  for (int r = 5; r < 150; r += 20) {
    strokeWeight(grosorLineas);
    stroke(rojo);
    line(r, 0, r, 400);
  }
  //lineas verde
  for (int ve= 15; ve < 175; ve += 20) {
    strokeWeight(grosorLineas);
    stroke(verde);
    line(ve, 0, ve, 400);
  }
  //_______________________________________

  //lineas verde
  for (int ve= 175; ve < 400; ve += 20) {
    strokeWeight(grosorLineas);
    stroke(verde);
    line(ve, 0, ve, 400);
  }
  //lineas rojas
  for (int r = 165; r < 500; r += 20) {
    strokeWeight(grosorLineas);
    stroke(rojo);
    line(r, 0, r, 400);
  }
  //elipse 2
  fill(random(235,251),random(200,235),random(110,131));
  noStroke();
  ellipse(220, 200, ancho, largo);

  //lineas azules
  for (int a = 160; a < 320; a += 20) {
    strokeWeight(grosorLineas);
    stroke(azul);
    line(a, 0, a, 400);
  }
  //lineas violetas
  for (int vi = 150; vi < 300; vi += 20) {
    strokeWeight(grosorLineas);
    stroke(violeta);
    line(vi, 0, vi, 400);
  }
}
//variacion en grosor de las lineas
void mouseClicked() {
  grosorLineas++;
}

void keyPressed () {
  // BONTON REINICIAR
  if (keyCode == 'R') {
    grosorLineas= 0;
  }
}
