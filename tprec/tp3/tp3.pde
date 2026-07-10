//https://www.youtube.com/watch?v=KnP4TKg_BKw
float factorEscala = 0.7; 
int cantMax = 15;
int cant = 10; 
PImage miImagen;
float rotacionExtra = 0;

// Variables colores
float rangoGrisAdentro = 15;     
float rangoGrisCuadrados = 12;   
float brilloInteractivo = 255; 

void setup() {
  size(800, 400); // Resolución
  miImagen = loadImage("figura39.jpg"); 
  rectMode(CENTER); 
}
  
void draw() {
  background(0); 
   
  // Imagen izquierda
  image(miImagen, 0, 0, 400, 400);
 
  ilusionOptica(600, 200, 390, cant, rotacionExtra, rangoGrisAdentro, rangoGrisCuadrados, brilloInteractivo);
}

void mousePressed() {
  if (mouseButton == LEFT) {
    rotacionExtra = rotacionExtra + 45; 
    
    float distanciaAlMedio = calcularDistancia(mouseX, mouseY, 600, 200);
    
    // Condicionales
    if (distanciaAlMedio < 140) {
      rangoGrisAdentro = random(5, 50); // random     
      rangoGrisCuadrados = random(5, 35); // random   
      
      brilloInteractivo = map(distanciaAlMedio, 0, 140, 255, 180); // map
    }
    
  } else if (mouseButton == RIGHT) {
    // Reiniciar programa
    rotacionExtra = 0;
    rangoGrisAdentro = 15;
    rangoGrisCuadrados = 12;
    brilloInteractivo = 255;
  }
}
