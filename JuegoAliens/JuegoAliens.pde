 private Humano chico;
 private Ovni alien;
 private Plataforma plataforma;
 PImage fondo;
 color tinteF = color(101, 94, 175);

 public void setup(){
  size(500,600);
  fondo = loadImage("city.jpg");
  chico = new Humano();
  alien = new Ovni();
  plataforma = new Plataforma();
  chico.setPosicion(new PVector(0,500));
  chico.setVelocidad(new PVector(10,0));
  }

 public void draw(){
  background(#10111F);
  tint(tinteF);
  image(fondo, 0, 0, 500,600);
  noTint();
  chico.dibujar();
  alien.dibujar();
  alien.mover();
  plataforma.dibujar();

  if (chico.izquierda) {
    chico.mover(0);
   }
  if (chico.derecha) {
    chico.mover(1);
   }
  }
 
 public void mousePressed(){
  if(mouseButton == LEFT){
   chico.izquierda = true;
   }
  
  if(mouseButton == RIGHT){
   chico.derecha = true;
   }
  }
 
 public void mouseReleased(){
   if(mouseButton == LEFT){
     chico.izquierda = false;
    }
   if(mouseButton == RIGHT){
     chico.derecha = false;   
    }
   }  
