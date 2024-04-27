//Molina Maria Elena (94803/4) comisión 3

PImage imagen;

void setup() {
  size(800, 400);
  imagen= loadImage("imagen1.jpeg");
}

void draw() {
  println(mouseX, mouseY);

  background(196, 196, 196);
  image (imagen, 0, 0, 400, 400);

  //torso
  noStroke();
  fill (#EACB9C);//color piel
  rect(524, 162, 126, 138);
  fill (#431D5F); //color violeta
  rect (400, 227, 799, 399);

  fill(#E3B615); //color amarillo
  quad(490, 227, 524, 227, 550, 399, 450, 399);
  quad(650, 227, 684, 227, 730, 399, 630, 399);

  fill (#EACB9C); //color piel
  quad(524, 227, 650, 227, 630, 399, 550, 399);

  //cabeza
  fill (#F2D9C9);//color piel
  ellipse(584, 0, 250, 400);
  //ojos
  fill(250, 250, 250); //blanco
  stroke(1);
  ellipse(634, 40, 45, 25);
  ellipse(520, 40, 45, 25);
  fill(0, 0, 0); //negro
  ellipse(634, 40, 25, 25);
  ellipse(520, 40, 25, 25);
  //labios
  fill(#EA9595);
  noStroke();
  triangle(540, 150, 573, 137, 573, 165);
  triangle(625, 150, 588, 136, 588, 165);
  ellipse(582, 150, 50, 30);
  stroke(1);

  fill(0);
  beginShape();
  vertex(644, 0);
  vertex(658, 118);
  vertex(678, 148);
  vertex(668, 226);
  vertex(647, 320);
  vertex(740, 226);
  vertex(750, 128);
  vertex(760, 50);
  // vertex(745,50);
  vertex(760, 0);
  endShape();

  beginShape();
  vertex(510, 0);
  vertex(490, 130);
  vertex(510, 150);
  vertex(500, 226);
  vertex (510, 320);
  vertex(483, 291);

  vertex(430, 226);
  vertex(410, 112);
  vertex(410, 0);
  endShape();
  noStroke();
  // fill(#EACB9C);
  //triangle(580,50,600,120,560,120);
  stroke(1);
  line(600, 87, 608, 100);
  line(608, 100, 605, 109);
  line(605, 109, 593, 113);
  line(600, 87, 596, 65);
  line(574, 70, 570, 91);
  line(570, 91, 565, 101);
  line(565, 101, 569, 110);

  line(612, 27, 625, 22);
  line(626, 22, 634, 22);
  line(634, 22, 645, 23);

  line(540, 26, 527, 22);
  line(527, 22, 515, 22);
  line(515, 22, 506, 24);
}
