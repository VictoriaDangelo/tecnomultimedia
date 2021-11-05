//-----------------------------------------------------------------------------------------------------------------------
// TP5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

/*
Hola profe, no pude terminar de resolver mi mini juego. Ten envio mis avances y lo que me falta resolver para el recu. 
Falta resolver:
-Determinar cuando recolecta "20" lingotes gana.
-Cambiar movimiento de teclas por mouse. 
-Reiniciar el programa: al finalizar, se debe poder volver al inicio.


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
  size( 800,400 );
  juego = new Juego();
}

void draw() {
  juego.actualizar();
  juego.dibujar();
  juego.texto();
}

void keyPressed() {
  juego.teclas();
}
