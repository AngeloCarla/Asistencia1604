class Ovni{ 
 private PVector posicion = new PVector(0,0);
 private PVector velocidad = new PVector(8,0);
 private PImage ovni;
 private color tinteO = color(250,197,200);
  
 public Ovni(){
  this.ovni = loadImage("OVNI.png");
  }

 public void dibujar(){
  tint(this.tinteO);
  image(ovni, this.posicion.x, this.posicion.y, 300, 300);
  }
  
 public void mover(){
  this.posicion.x=this.posicion.x+this.velocidad.x;
   if (this.posicion.x > width - 200|| this.posicion.x < -90){
    velocidad.x = -velocidad.x;
   }
  }
 }
