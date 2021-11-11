// TP5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// NOMBRE/s ALUMNO/s *
// -----------------------------------DANGELO, Victoria.
// NOMBRE DE LA AVENTURA GRÁFICA *
// -----------------------------------"Las aventuras del Gato con Botas"
// NOMBRE TENTATIVO DEL JUEG0 *
// Atrapa los lingotes de oro 
/* PROPUESTA DESCRIPTIVA

En este minijuego, el jugdor debera recolectar 20 lingotes de oro para poder ganar.
Los lingotes caeran desde el borde superior; ademas de piedras que deberas esquivarlas, sino perdes el juego. 
*/
//--------------------------------------------------------------------------------------------------------------------------
Juego juego;

void setup() {
  size( 550,620 );
  juego = new Juego();
}

void draw() {
  juego.actualizar();
  juego.dibujar();
  juego.texto();
}

void keyPressed() {
  juego.tecla();
}
