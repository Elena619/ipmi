PImage imagen1, imagen2, imagen3, imagen4;
PFont misLetras;

 int pantalla = 1;
  
  float texto1 = -200;
  float texto2 = 500;
  float texto3 = 500;
  

void setup () {
size (640,480);
textSize (40);

imagen1= loadImage ("imagen1.jpeg");
imagen2= loadImage ("imagen2.jpeg");
imagen3= loadImage ("imagen3.jpeg");
//imagen4= loadImage ("imagen4.jpeg");

misLetras = loadFont("Cambria-Italic-45.vlw");

}

void draw () {
  background(200);
    
    if (pantalla == 1) {   //pantalla 1
      image(imagen1, 0, 0, 640, 480);
     
      fill (5,5,5,70); //es un fill con baja opacidad para que se vean las letras
      rect (0, 0, 640, 480);
      
      textFont(misLetras,40);
      fill(255,255,255);
      text("El arte digital es una disciplina \nde las artes plasticas que comprende \nobras en las que se usan elementos \ndigitales tanto en el proceso como \nen su exhuibición.", 0, texto1);
      texto1 = texto1 + 1;
      
  } else if (pantalla == 2) {   //pantalla 2
      image(imagen2, 0, 0, 640, 480);
      textFont(misLetras,40);
      fill(#3CFF03 );
      text("Everydays: The first 5000 days \nEsta obra es un collage de 5000 imagenes \nindividuales creadas diariamente durante  13 años", texto2 ,150);
      texto2 = texto2 - 1.2;
      
  } else if (pantalla == 3) {     //pantalla 3
      image(imagen3, 0 ,0, 640, 480);
      
      fill (5,5,5,80); //es un fill con baja opacidad para que se vean las letras
      noStroke();
      rect (0, 0, 420, 480);
      
      textFont(misLetras,40);
      fill(#FFFFFF);
      text("Fue creada por el artista \ndigital Beeple (Mike \nWinkelman) y fue vendida \nen una subasta en 2021 \npor mas de 69 millondes \nde dolares, marcando un \nhito en la aceptación del \narte digital.", 0,texto3);
      texto3 = texto3 - 1;

  } if(frameCount % 900 == 0){
    pantalla = pantalla + 1;
  }
    if(pantalla > 3) {
      pantalla = pantalla - 1;
  } if(frameCount > 2800) {
     // fill(255);
      rect(550,420,50,25);
      fill(#16002E);
      
  }  
     
}
  void mouseClicked(){
    if(mouseX > 550 && mouseY > 420 && mouseX < 600 && mouseY < 445 && pantalla == 3){
      pantalla = 1;
      frameCount = 0;
     texto1 = -200;
     texto2 = 500;
     texto3 = 500;
    
    }
  }
