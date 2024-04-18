class Ovni{
 PImage ovni;
 color tinteO = color(164,150,206);
 private PVector posicion = new PVector(0,0);
 private PVector velocidad = new PVector(8,0);
  
 public Ovni(){
  ovni = loadImage("OVNI.png");
  }

 public void dibujar(){
  tint(tinteO);
  image(ovni, this.posicion.x, this.posicion.y, 300, 300);
  }
  
 public void mover(){
  this.posicion.x=this.posicion.x+this.velocidad.x;
   if (this.posicion.x > width - 200|| this.posicion.x < -90){
    velocidad.x = -velocidad.x;
   }
  }
 }
