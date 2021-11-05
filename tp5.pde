// TP5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

/*
Hola profe, no pude terminar el mini juego. Te envio mis avances y lo que me falta resolver para el recu: 

- Determinar cuando recolecta "20" lingotes para ganar, y pasar a esa pantalla "ganar"  
- En casos, hay colisiones que no coinciden con lo que deberian generar : Piedra = perder ; Lingotes = sumar puntos. (reiniciandolo toma bien los puntos)
- Boton al inicio "JUGAR" 
- y pasar la clase Puntos a la de Juego. 

como detalle: Probar efecto de sonido en colisiones, ganar y perder.
  ---aguardo sugerencias, gracias. Saludos! 


*/
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
  size( 800,400 );
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
