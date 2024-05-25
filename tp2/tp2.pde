PImage titanic1, titanic2, titanic3, titanic4;
PFont misLetras;

 int pantalla = 1;
  
  float texto1 = -200;
  float texto2 = 500;
  float texto3 = 500;
  

void setup () {
size (640,480);
textSize (40);


titanic1= loadImage ("titanic1.jpg");
titanic2= loadImage ("titanic2.png");
titanic3= loadImage ("titanic3.png");
titanic4= loadImage ("titanic4.png");

misLetras = loadFont("Cambria-Italic-45.vlw");

}

void draw () {
  background(200);
    
    if (pantalla == 1) {   //pantalla 1
      image(titanic1, 0, 0, 640, 480);
      textFont(misLetras,40);
      fill(#FF0000);
      text("Siendo construido entre 1909 y 1912 \nen los astilleros de Harland & Wolff \nde Belfastv. El Titanic constituía el\nsegundo buque de un trío de grandes\ntransatlánticos, propiedad de la \ncompañía naviera White Star Line,\nconocidos como la clase Olympic.", 0, texto1);
      texto1 = texto1 + 1;
  } else if (pantalla == 2) {   //pantalla 2
      image(titanic2, 0, 0, 640, 480);
      textFont(misLetras,40);
      fill(#FA0086);
      text("El Titanic fue construido con el\nnúmero de construcción 401.Su \nconstrucción fue financiada por el \nempresario estadounidense J. P. \nMorgan y su empresa International \nMercantile Marine Company.", texto2,100);
      texto2 = texto2 - 1.2;
  } else if (pantalla == 3) {     //pantalla 3
      image(titanic3, 0 ,0, 640, 480);
      textFont(misLetras,40);
      fill(#FFFFFF);
      text("El Titanic inició su viaje inaugural \ncon destino a Nueva York el miércoles \n10 de abril de 1912, zarpando del \npuerto inglés de Southampton. El \nTitanic se hundió la madrugada \ndel 15 de abril de 1912, unas 1.500 \npersonas perdieron la vida.", 0,texto3);
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
