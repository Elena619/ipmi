//link anterior
// https://youtu.be/o3uCUHRR1q0

//link nuevo
// https://youtu.be/MnBPUCsMb6Y


int  cantX = 10; //determine la cantidad de cuadrados
int  cantY = 10;
PImage imagen;
boolean invertirColor = false; // me sirve para controlar los colores invertidos
void setup() {
  size(800, 400);
  imagen= loadImage ("imagen1.jpeg");
 
}
void draw() {
 background(255);
 image (imagen, 0, 0, 400, 400);
 
 float modX = 400/cantX; //mitad de pantalla
 float modY = 400/cantY;
 
 // for anidado
for (int j = 0; j < cantY; j++) { //bluce que dibuja los cuadros verticales
for (int i = 0; i < cantX; i++) { //dibuja los cuador horizontales

//invocar funcion que retorna valor, 
fill (colorCuadros (i, j, invertirColor)); //dibujo fondo

rect(400 + i * modX, j * modY, 40,40);


fill (colorCirculos  (i, j, invertirColor)); //dibujo circulos
noStroke();
ellipse (400 + i *modX + modY / 2, j * modX + modY / 2, 18,18);
}
}
}


void mousePressed() {
  invertirColor = !invertirColor;
}

//declaración de función que retorna valor, 
//aca puse las condiciones para que se intercalen los colores


color colorCuadros(int i, int j, boolean invertirColor) { //fondo
  
  if (invertirColor) {
    if (( i + j) % 2 == 0) {
      return color (0); // negro
    } else {
      return color (255); // color blanco
    }
  } else {
    if (( i + j) % 2 == 0) {
      return color (255); // color blanco
    } else {
      return color (0); //color negro
    }
  }
}

color colorCirculos(int i, int j, boolean invertirColor) { //circulos
  
  if (invertirColor) {
    if (( i + j) % 2 == 0) {
      return color (255); // color blanco
    } else {
      return color (0); // color negro 
    }
  } else {
    if (( i + j) % 2 == 0) {
      return color (0); //color negro
    } else {
      return color (255); // color blanco
    }
  }
}







    
