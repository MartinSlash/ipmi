//https://www.youtube.com/watch?v=yObcybcRuwo

float factorEscala = 0.7; 
int cantMax = 15;
int cant = 10; 


int estadoColor = 0; 
int colorFondo = 0; 

float anguloRotacion = 0;

PImage miImagen;

void setup() {
  size(800, 400); 
  
 
  miImagen = loadImage("figura39.jpg");
  
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw() {
  background(colorFondo); 
  
  if (miImagen != null) {
    image(miImagen, 0, 0, 400, 400);
  }
  
  
  stroke(100);
  line(400, 0, 400, height);
  
  
  pushMatrix();
  
 
  translate(600, 200); 
  
  //Funciones matematicas
  
  float distanciaAlCentro = dist(mouseX, mouseY, 600, 200);
  
  
  cant = (int)map(mouseX, 400, width, 3, cantMax);
  cant = constrain(cant, 3, cantMax);
  
  anguloRotacion = map(mouseX, 400, width, -0.15f, 0.15f);
  
  float tam = 400; 
  
     //Ciclos FOR anidados
     
  for (int i = 0; i < cant; i++) {
    
    pushMatrix(); 
    

    if (esPar(i)) {
      rotate(anguloRotacion * i);
    } else {
      rotate(-anguloRotacion * i);
    }
    
  //Funcinn propia con parametros que NO retorna valor
  
    for (int j = 0; j < 1; j++) {
      asignarColorFigura(0, i, cant); 
    }
    rect(0, 0, tam, tam);
    
    asignarColorFigura(1, i, cant); 
    ellipse(0, 0, tam, tam);
    
    popMatrix(); 
    
    //Funciones propias con parametros que RETORNAN un valor
    
    tam = calcularSiguienteEscala(tam);
  }
  popMatrix();
}


void asignarColorFigura(int tipoFigura, float actual, float fin) {
  noStroke(); 
  
  if (estadoColor == 0) {
    
    // Efecto 1: DEGRADE NORMAL 
    
    if (tipoFigura == 0) {
      fill(interpolaColores(color(20), color(180), actual, 0, fin - 1));
    } else {
      fill(interpolaColores(color(255), color(40), actual, 0, fin - 1));
    }
    
  } else if (estadoColor == 1) {
    
    //  Efecto 2: DEGRADE INVERTIDO
    
    if (tipoFigura == 0) {
      fill(interpolaColores(color(255), color(40), actual, 0, fin - 1));
    } else {
      fill(interpolaColores(color(20), color(180), actual, 0, fin - 1));
    }
    
  } else if (estadoColor == 2) {
    
    //  Efecto 3: PALETA DE ROJOS 
    
    if (tipoFigura == 0) {
      
      fill(interpolaColores(color(100, 0, 0), color(255, 50, 50), actual, 0, fin - 1));
    } else {
      
      fill(interpolaColores(color(255, 0, 0), color(20, 0, 0), actual, 0, fin - 1));
    }
  }
}


float calcularSiguienteEscala(float tamañoActual) {
  return tamañoActual * factorEscala;
}


boolean esPar(float num_) {
  if (num_ % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

 //map

color interpolaColores(color col1, color col2, float actual, float principio, float fin) {
  return lerpColor(col1, col2, map(actual, principio, fin, 0, 1));
}


void mousePressed() {
  if (mouseX > 400) {
    
    estadoColor = (estadoColor + 1) % 3; 
  }
}
