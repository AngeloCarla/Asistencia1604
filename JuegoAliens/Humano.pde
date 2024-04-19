class Humano{
 private PVector posicion;
 private PVector velocidad;
 private boolean left = false;
 private boolean right = false;
 private PImage luka;
 private color tinteL = color(247,205,218);

 public Humano(){
  this.luka = loadImage("luka.png");
  }
  
 public void dibujar(){
  tint(this.tinteL);
  image(luka, this.posicion.x, 425, 150,150);
  }
  
 public void mover(int direccion){
  if(direccion==0){
   if(this.posicion.x - this.velocidad.x >= -60){
   this.posicion.x-=this.velocidad.x;
    }
   }
  if(direccion==1){
   if(this.posicion.x + this.velocidad.x <= width - 100){
    this.posicion.x+=this.velocidad.x;
    }
   }
  }
 
 public PVector getPosicion(){
  return this.posicion;
  }
 
 public void setPosicion(PVector posicion){
  this.posicion = posicion;
  }
  
 public PVector getVelocidad(){
  return this.velocidad;
  }
  
 public void setVelocidad(PVector velocidad){
  this.velocidad = velocidad;
  }
  
 public boolean isLeft(){
  return this.left;
  }
 
 public void setLeft(boolean left){
  this.left = left;
  }
  
 public boolean isRight(){
  return this.right;
  }
 
 public void setRight(boolean right){
  this.right = right;
  }
 }
