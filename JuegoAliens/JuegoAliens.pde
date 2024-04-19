 private Humano chico;
 private Ovni alien;
 private Plataforma plataforma;
 private PImage fondo;
 private color tinteF = color(206,48,255);

 public void setup(){
  size(500,600);
  this.fondo = loadImage("city.jpg");
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

  if (chico.left) {
    chico.mover(0);
   }
  if (chico.right) {
    chico.mover(1);
   }
  }
   
  public void mousePressed(){
  if(mouseButton == LEFT){ //click izquierdo
   chico.left = true;
   }
  
  if(mouseButton == RIGHT){ //click derecho
   chico.right = true;
   }
  }
 
 public void mouseReleased(){
   if(mouseButton == LEFT){
     chico.left = false;
    }
   if(mouseButton == RIGHT){
     chico.right = false;   
    }
   }  
