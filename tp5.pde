// TP5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// video explicativo: ---> https://youtu.be/Tot0AaXCKsc

// NOMBRE/s ALUMNO/s *
// -----------------------------------   D'ANGELO, Victoria(88529/7).
// NOMBRE DE LA AVENTURA GRÁFICA *
// ----------------------------------- " Las aventuras del Gato con Botas "
// NOMBRE TENTATIVO DEL JUEG0 *
// Atrapa los lingotes de oro 
/* PROPUESTA DESCRIPTIVA
 
 En este minijuego, el jugdor debera recolectar 100 puntos que se logra atrapando los lingotes de oro y asi ganar.
 Cada lingote vale 10 puntos pero a la vez, debera esquivar piedras, que si las agarra pierde.  
 */
//--------------------------------------------------------------------------------------------------------------------------
Juego juego;

void setup() {
  size( 550, 620 );
  juego = new Juego();
}
void draw() {
  juego.actualizar();
  juego.dibujar();
  juego.texto();
}
void mousePressed () {
  juego.botones();
}
