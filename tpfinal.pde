// TP5  | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda
/*
NOMBRE /s ALUMNA /s *
 -------------------- D'ANGELO, Victoria (88529/7) y BESNATI Victoria (88151/1)
 
 -------------------- "Las aventuras del Gato con Botas"
 Video D'ANGELO: ---> https://www.youtube.com/watch?v=G5zeBQapthw&t=7s 
 */
import processing.sound.*;
aventuragrafica avg;
SoundFile mf, ganar, perder, colision1, colision2;
void setup() {
  surface.setSize(800, 450);
  surface.setTitle("-- Las Aventuras del Gato con Botas --");
  noCursor();
  avg = new aventuragrafica();
  ganar = new SoundFile(this, "ganar.wav");
  perder = new SoundFile(this, "perder.wav");
  colision1 = new SoundFile(this, "colision1.wav");
  colision2 = new SoundFile(this, "colision2.wav");
  mf = new SoundFile(this, "musica.mp3");
}
void draw() {
  avg.dibujar();
}
void mouseClicked() {
  avg.click();
}
