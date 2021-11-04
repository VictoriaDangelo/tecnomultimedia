 //-----------------------------------------------------------------------------------------------------------------------
// TP5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

/*

Falta resolver:
-Determinar la pantalla: cuando se gana, por ej recolecta "30" lingotes" y gana
-Cambiar movimiento de teclas por mouse.
-Poner los fondos
-Sonidos, en colisiones, ganar y perder. 
-Poner boton inicio en ves de space


*/

// NOMBRE/s ALUMNO/s *
// -----------------------------------DANGELO, Victoria.
// NOMBRE DE LA AVENTURA GRÁFICA *
// -----------------------------------"Las aventuras del Gato con Botas"

// NOMBRE TENTATIVO DEL JUEG0 *
// Atrapa los lingotes de oro 

/* PROPUESTA DESCRIPTIVA

En este minijuego, el jugdor debera recolectar 30 lingotes de oro para poder ganar.
Los lingotes caeran desde el borde superior; ademas de piedras, que si las atrapas se pierde el juego.

*/

//--------------------------------------------------------------------------------------------------------------------------
Juego juego;

void setup() {
  size( 800,600 );
  juego = new Juego();
}

void draw() {
  juego.actualizar();
  juego.dibujar();
}

void keyPressed() {
  juego.teclas();
}
