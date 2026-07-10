// Función propia sin retorno
void ilusionOptica(float x_, float y_, float tamInicial, int cantidadCapas, float angulo, float rangoCirculos, float rangoCuadrados, float brilloMax) {
  float tamaño = tamInicial;
  noStroke(); 

  // Rotate y Translate
  pushMatrix();
  translate(x_, y_); 
  rotate(radians(angulo)); 

  // Ciclo for anidado
  for (int i = 0; i < cantidadCapas; i = i + 1) {
    
    for (int j = 0; j < 1; j = j + 1) {
      float grisCirculo = brilloMax - (i * rangoCirculos);
      fill(grisCirculo);
      ellipse(0, 0, tamaño, tamaño); 
    }
    
    tamaño = tamaño * factorEscala;
    
    float grisCuadrado = i * rangoCuadrados; 
    fill(grisCuadrado);
    rect(0, 0, tamaño, tamaño); 
  }

  popMatrix(); 
}

// Función propia con retorno
float calcularDistancia(float x1, float y1, float x2, float y2) {
  float d = dist(x1, y1, x2, y2); // dist
  return d; 
}
