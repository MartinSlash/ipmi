PImage tituloImg;
PFont fuente;

PImage escena1;
PImage escena2;
PImage escena3;
PImage escena4;
PImage escena5;
PImage escena6;
PImage escena7;
PImage escena8;
PImage escena9;

boolean play = false;
boolean terminado = false;

int inicioMili;
int milisegundo;
int letrasAMostrar;

int pos1;
int pos2;

String textoActual = "";

String textoIntro =
"Esta pelicula cuenta la historia de dos completos desconocidos,\n" +
"pero destinados a encontrarse.\n" +
"Mitsuha y Taki viven en mundos completamente distintos,\n" +
"marcados por los lugares en los que crecieron\n" +
"y por las realidades que enfrentan en su dia a dia.\n" +
"Sin saberlo, estan a punto de vivir una experiencia unica\n" +
"que cambiara sus vidas por completo.";

void setup() {

  size(640, 480);

  fuente = loadFont("SitkaTextItalic-48.vlw");
  textFont(fuente);

  tituloImg = loadImage("titulo.png");

  escena1 = loadImage("fondo2.jpg");
  escena2 = loadImage("fondo3.png");
  escena3 = loadImage("fondo4.jpg");
  escena4 = loadImage("Fondo5.jpg");
  escena5 = loadImage("Fondo 6.jpg");
  escena6 = loadImage("fondo 7.png");
  escena7 = loadImage("fondo 8.png");
  escena8 = loadImage("fondo 9.png");
  escena9 = loadImage("fondo 10.png");
}

void draw() {

  background(245);

  milisegundo = millis() - inicioMili;

  // MENU

  if (play == false) {

    fill(245);
    noStroke();
    rect(0, 60, 640, 360);

    image(tituloImg, 0, 60, 640, 360);

    // BOTON PLAY

    if (
      mouseX > 240 &&
      mouseX < 400 &&
      mouseY > 330 &&
      mouseY < 390
      ) {

      fill(70, 130, 255);
    }

    else {

      fill(100);
    }

    rect(240, 330, 160, 50, 10);

    fill(255);

    textSize(28);

    textAlign(CENTER, CENTER);

    text("Play", 320, 355);

    // BARRAS

    fill(0);

    rect(0, 0, 640, 60);
    rect(0, 420, 640, 60);
  }

  // ESCENAS

  else {

    if (milisegundo < 1000) {

      transPortada();
    }

    else if (milisegundo < 23000) {

      escena1();
    }

    else if (milisegundo < 24000) {

      trans1a2();
    }

    else if (milisegundo < 39000) {

      escena2();
    }

    else if (milisegundo < 40000) {

      trans2a3();
    }

    else if (milisegundo < 54000) {

      escena3();
    }

    else if (milisegundo < 55000) {

      trans3a4();
    }

    else if (milisegundo < 70000) {

      escena4();
    }

    else if (milisegundo < 71000) {

      trans4a5();
    }

    else if (milisegundo < 86000) {

      escena5();
    }

    else if (milisegundo < 87000) {

      trans5a6();
    }

    else if (milisegundo < 101000) {

      escena6();
    }

    else if (milisegundo < 102000) {

      trans6a7();
    }

    else if (milisegundo < 120000) {

      escena7();
    }

    else if (milisegundo < 121000) {

      trans7a8();
    }

    else if (milisegundo < 140000) {

      escena8();
    }

    else if (milisegundo < 141000) {

      trans8a9();
    }

    else if (milisegundo < 158000) {

      escena9();
    }

    else {

      fin();
    }

    // BARRAS

    fill(0);

    rect(0, 0, 640, 60);
    rect(0, 420, 640, 60);
  }
}

// ESCENAS

void escena1() {

  textoActual = textoIntro;

  letrasAMostrar = milisegundo / 45;

  image(escena1, 0, 60, 640, 360);

  texto(0);
}

void escena2() {

  textoActual =
    "Mitsuha es una joven que vive en Itomori,\n" +
    "un pequeño pueblo rodeado de naturaleza,\n" +
    "donde la vida es tranquila y tradicional.\n\n" +
    "Por otro lado, Taki es un adolescente que vive en Tokio,\n" +
    "una gran ciudad llena de movimiento y ritmo acelerado.";

  letrasAMostrar = (milisegundo - 24000) / 45;

  image(escena2, 0, 60, 640, 360);

  texto(0);
}

void escena3() {

  textoActual =
    "Mitsuha comienza a darse cuenta de que algo\n" +
    "extraño esta ocurriendo.\n\n" +
    "En la escuela, sus compañeros le dicen que se comporta\n" +
    "de forma diferente, pero ella no recuerda haber hecho\n" +
    "nada fuera de lo normal.";

  letrasAMostrar = (milisegundo - 40000) / 45;

  image(escena3, 0, 60, 640, 360);

  texto(0);
}

void escena4() {

  textoActual =
    "Por otro lado, Taki tambien comienza a notar\n" +
    "que algo no esta bien.\n\n" +
    "Encuentra notas en su celular y, en la escuela,\n" +
    "sus compañeros tienen que recordarle cosas basicas,\n" +
    "como a que escuela asiste o que debe ir a trabajar.";

  letrasAMostrar = (milisegundo - 55000) / 45;

  image(escena4, 0, 60, 640, 360);

  texto(0);
}

void escena5() {

  textoActual =
    "Al descubrir, a traves de notas,\n" +
    "que intercambian cuerpos durante la semana,\n" +
    "ambos comienzan a comprender lo que esta pasando.\n\n" +
    "Desde ese momento, deberan aprender a adaptarse\n" +
    "a una situacion completamente inusual.";

  letrasAMostrar = (milisegundo - 71000) / 45;

  image(escena5, 0, 60, 640, 360);

  texto(0);
}

void escena6() {

  textoActual =
    "Para respetar la vida del otro,\n" +
    "y al no recordar lo ocurrido al dia siguiente,\n" +
    "deciden registrar en sus celulares las acciones,\n" +
    "promesas y situaciones importantes de cada dia.";

  letrasAMostrar = (milisegundo - 87000) / 45;

  image(escena6, 0, 60, 640, 360);

  texto(0);
}

void escena7() {

  textoActual =
    "Al principio, la situacion resulta confusa\n" +
    "y dificil de manejar, pero con el tiempo\n" +
    "logran adaptarse y convivir mejor.\n\n" +
    "Poco a poco comienzan a ayudarse mutuamente,\n" +
    "interviniendo en la vida del otro.";

  letrasAMostrar = (milisegundo - 102000) / 45;

  image(escena7, 0, 60, 640, 360);

  texto(0);
}

void escena8() {

  textoActual =
    "Despues de un tiempo, llega un dia especial.\n\n" +
    "Mientras Taki se prepara para una cita importante,\n" +
    "Mitsuha presencia por la noche el paso del cometa Tiamat,\n" +
    "un fenomeno que ocurre una vez cada 1200 años.";

  letrasAMostrar = (milisegundo - 121000) / 45;

  image(escena8, 0, 60, 640, 360);

  texto(0);
}

void escena9() {

  textoActual =
    "Al darse cuenta de lo ocurrido,\n" +
    "Taki comienza a investigar el motivo.\n\n" +
    "Poco a poco descubre que la situacion es mucho\n" +
    "mas grave de lo que imaginaba, y decide hacer\n" +
    "todo lo posible para volver a verla.";

  letrasAMostrar = (milisegundo - 141000) / 45;

  image(escena9, 0, 60, 640, 360);

  texto(0);
}

// TRANSICIONES

void transPortada() {

  int desplazamiento = (milisegundo * 640) / 1000;

  image(tituloImg, -desplazamiento, 60, 640, 360);

  image(escena1, 640 - desplazamiento, 60, 640, 360);
}

void trans1a2() {

  int tTrans = milisegundo - 23000;

  int desplazamiento = (tTrans * 640) / 1000;

  image(escena1, -desplazamiento, 60, 640, 360);

  textoActual = textoIntro;

  letrasAMostrar = textoActual.length();

  texto(-desplazamiento);

  image(escena2, 640 - desplazamiento, 60, 640, 360);
}

void trans2a3() {

  int tTrans = milisegundo - 39000;

  int desplazamiento = (tTrans * 640) / 1000;

  image(escena2, -desplazamiento, 60, 640, 360);

  textoActual =
    "Mitsuha es una joven que vive en Itomori,\n" +
    "un pequeño pueblo rodeado de naturaleza,\n" +
    "donde la vida es tranquila y tradicional.\n\n" +
    "Por otro lado, Taki es un adolescente que vive en Tokio,\n" +
    "una gran ciudad llena de movimiento y ritmo acelerado.";

  letrasAMostrar = textoActual.length();

  texto(-desplazamiento);

  image(escena3, 640 - desplazamiento, 60, 640, 360);
}

void trans3a4() {

  int tTrans = milisegundo - 54000;

  int desplazamiento = (tTrans * 640) / 1000;

  image(escena3, -desplazamiento, 60, 640, 360);

  textoActual =
    "Mitsuha comienza a darse cuenta de que algo\n" +
    "extraño esta ocurriendo.\n\n" +
    "En la escuela, sus compañeros le dicen que se comporta\n" +
    "de forma diferente, pero ella no recuerda haber hecho\n" +
    "nada fuera de lo normal.";

  letrasAMostrar = textoActual.length();

  texto(-desplazamiento);

  image(escena4, 640 - desplazamiento, 60, 640, 360);
}

void trans4a5() {

  int tTrans = milisegundo - 70000;

  int desplazamiento = (tTrans * 640) / 1000;

  image(escena4, -desplazamiento, 60, 640, 360);

  textoActual =
    "Por otro lado, Taki tambien comienza a notar\n" +
    "que algo no esta bien.\n\n" +
    "Encuentra notas en su celular y, en la escuela,\n" +
    "sus compañeros tienen que recordarle cosas basicas,\n" +
    "como a que escuela asiste o que debe ir a trabajar.";

  letrasAMostrar = textoActual.length();

  texto(-desplazamiento);

  image(escena5, 640 - desplazamiento, 60, 640, 360);
}

void trans5a6() {

  int tTrans = milisegundo - 86000;

  int desplazamiento = (tTrans * 640) / 1000;

  image(escena5, -desplazamiento, 60, 640, 360);

  textoActual =
    "Al descubrir, a traves de notas,\n" +
    "que intercambian cuerpos durante la semana,\n" +
    "ambos comienzan a comprender lo que esta pasando.\n\n" +
    "Desde ese momento, deberan aprender a adaptarse\n" +
    "a una situacion completamente inusual.";

  letrasAMostrar = textoActual.length();

  texto(-desplazamiento);

  image(escena6, 640 - desplazamiento, 60, 640, 360);
}

void trans6a7() {

  int tTrans = milisegundo - 101000;

  int desplazamiento = (tTrans * 640) / 1000;

  image(escena6, -desplazamiento, 60, 640, 360);

  textoActual =
    "Para respetar la vida del otro,\n" +
    "y al no recordar lo ocurrido al dia siguiente,\n" +
    "deciden registrar en sus celulares las acciones,\n" +
    "promesas y situaciones importantes de cada dia.";

  letrasAMostrar = textoActual.length();

  texto(-desplazamiento);

  image(escena7, 640 - desplazamiento, 60, 640, 360);
}

void trans7a8() {

  int tTrans = milisegundo - 120000;

  int desplazamiento = (tTrans * 640) / 1000;

  image(escena7, -desplazamiento, 60, 640, 360);

  textoActual =
    "Al principio, la situacion resulta confusa\n" +
    "y dificil de manejar, pero con el tiempo\n" +
    "logran adaptarse y convivir mejor.\n\n" +
    "Poco a poco comienzan a ayudarse mutuamente,\n" +
    "interviniendo en la vida del otro.";

  letrasAMostrar = textoActual.length();

  texto(-desplazamiento);

  image(escena8, 640 - desplazamiento, 60, 640, 360);
}

void trans8a9() {

  int tTrans = milisegundo - 140000;

  int desplazamiento = (tTrans * 640) / 1000;

  image(escena8, -desplazamiento, 60, 640, 360);

  textoActual =
    "Despues de un tiempo, llega un dia especial.\n\n" +
    "Mientras Taki se prepara para una cita importante,\n" +
    "Mitsuha presencia por la noche el paso del cometa Tiamat,\n" +
    "un fenomeno que ocurre una vez cada 1200 años.";

  letrasAMostrar = textoActual.length();

  texto(-desplazamiento);

  image(escena9, 640 - desplazamiento, 60, 640, 360);
}

void fin() {

  terminado = true;

  image(escena9, 0, 60, 640, 360);

  textoActual =
    "Al darse cuenta de lo ocurrido,\n" +
    "Taki comienza a investigar el motivo.\n\n" +
    "Poco a poco descubre que la situacion es mucho\n" +
    "mas grave de lo que imaginaba, y decide hacer\n" +
    "todo lo posible para volver a verla.";

  letrasAMostrar = textoActual.length();

  texto(0);

  // BOTON RESET

  if (
    mouseX > 250 &&
    mouseX < 390 &&
    mouseY > 340 &&
    mouseY < 390
    ) {

    fill(70, 130, 255);
  }

  else {

    fill(100);
  }

  rect(250, 340, 140, 50, 10);

  fill(255);

  textSize(22);

  textAlign(CENTER, CENTER);

  text("RESET", 320, 365);
}

// TEXTO

void texto(int coordX) {

  if (textoActual == "") {

    return;
  }

  if (letrasAMostrar > textoActual.length()) {

    letrasAMostrar = textoActual.length();
  }

  String subTexto =
    textoActual.substring(0, letrasAMostrar);

  textSize(18);

  textLeading(25);

  textAlign(CENTER, CENTER);

  int x = coordX + width / 2;

  int y = height / 2;

  // SOMBRA

  fill(0);

  text(subTexto, x + 2, y + 2);

  // TEXTO

  fill(255);

  text(subTexto, x, y);
}

// CLICK

void mouseClicked() {

  // PLAY

  if (play == false) {

    if (
      mouseX > 240 &&
      mouseX < 400 &&
      mouseY > 330 &&
      mouseY < 390
      ) {

      play = true;

      inicioMili = millis();
    }
  }

  // RESET

  else if (terminado == true) {

    if (
      mouseX > 250 &&
      mouseX < 390 &&
      mouseY > 340 &&
      mouseY < 390
      ) {

      play = false;

      terminado = false;
    }
  }
}
