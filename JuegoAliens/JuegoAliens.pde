 private Nave naveEspacial;
 private Ovni alien;
 PImage fondo;
 boolean izquierda = false;
 boolean derecha = false;

 public void setup(){
  size(500,600);
  fondo = loadImage("fondoEstelar.jpg");
  naveEspacial = new Nave();
  alien = new Ovni();
  naveEspacial.setPosicion(new PVector(220,height/2));
  naveEspacial.setVelocidad(new PVector(10,0));
  }

 public void draw(){
  background(#10111F);
  image(fondo, 100, 1, 300, 600);
  naveEspacial.dibujar();
  alien.dibujar();
  alien.mover();

  if (izquierda) {
    naveEspacial.mover(0);
   }
  if (derecha) {
    naveEspacial.mover(1);
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
 //public void mousePressed(){
  //if(mouseButton == LEFT){
   //naveEspacial.mover(0);
   //println("izquierda");
   //}
  //if(mouseButton == RIGHT){
   //naveEspacial.mover(1);
   //println("derecha");
  // }
// }
