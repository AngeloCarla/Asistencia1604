 private Humano chico;
 private Ovni alien;
 PImage fondo;
 color tinte = color(101, 94, 175);
 boolean izquierda = false;
 boolean derecha = false;

 public void setup(){
  size(500,600);
  fondo = loadImage("city.jpg");
  chico = new Humano();
  alien = new Ovni();
  chico.setPosicion(new PVector(0,500));
  chico.setVelocidad(new PVector(10,0));
  }

 public void draw(){
  background(#10111F);
  tint(tinte);
  image(fondo, 0, 0, 500,600);
  noTint();
  chico.dibujar();
  alien.dibujar();
  alien.mover();

  if (izquierda) {
    chico.mover(0);
   }
  if (derecha) {
    chico.mover(1);
   }
  }
 
 public void mousePressed(){
  if(mouseButton == LEFT){
   izquierda = true;
   }
  
  if(mouseButton == RIGHT){
   derecha = true;
   }
  }
 
 public void mouseReleased(){
   if(mouseButton == LEFT){
     izquierda = false;
    }
   if(mouseButton == RIGHT){
     derecha = false;   
    }
   }  
