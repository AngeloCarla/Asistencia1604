class Ovni{
 PImage ovni;
 private PVector posicion;
 private PVector velocidad;
  
 public Ovni(){
   ovni = loadImage("OVNI.png");
   posicion = new PVector(0,0);
   velocidad = new PVector(8,0);
  }

 public void dibujar(){
  image(ovni, this.posicion.x, this.posicion.y, 300, 300);
  }
  
 public void mover(){
    this.posicion.x=this.posicion.x+this.velocidad.x;
    if (this.posicion.x > width - 200|| this.posicion.x < -90){
      velocidad.x = -velocidad.x;
   }
  }
 }
