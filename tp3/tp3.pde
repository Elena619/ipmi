// https://youtu.be/o3uCUHRR1q0
// lo puse en oculto para que solo personas con el link lo puedan ver
//queria aclarar tambien que no tenia camara en la compu por eso grabe con el celular y esta medio desincronizado.
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
if (invertirColor){ //condicional para invertir colores
  if ((i + j) % 2 == 0) {  //condicional para alternar como tablero de ajedrez
    fill (0); //color negro
  } else {
    fill (255); // color blanco
  }
} else {
  if (( i + j) % 2 == 0) {
    fill (255); //blanco
  } else {
    fill(0); //color negro
  }
}
rect(400 + i * modX, j * modY, 40,40); //tramaño de mis cuadros y ordene que se dibujen a mitad de pantalla


//hice el mismo proceso para los circulos
if (invertirColor) {
  if (( i + j) % 2 == 0) {
    fill(255); //blanco
  } else {
    fill(0); //color negro
  }
} else{
  if (( i + j) % 2 == 0) {
    fill (0); //color negro
  } else {
    fill(255); // color blanco
  }
}
//ahora procedo a dibujar los circulos
noStroke();
ellipse (400 + i *modX + modY / 2, j * modX + modY / 2, 18,18);
}
}
}

void mousePressed() {
  invertirColor = !invertirColor;
}











    
