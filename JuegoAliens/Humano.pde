class Humano{
 private PVector posicion = new PVector(0, 0);
 private PVector velocidad = new PVector(10, 0);
  
 public Humano(){
  println("chico");
  }
  
 public void dibujar(){
  rect(posicion.x,posicion.y,50,50);
  }
  
 public void mover(int direccion){
  if(direccion==0){
   if(this.posicion.x - this.velocidad.x >= 0){
   this.posicion.x-=this.velocidad.x;
    }
   }
  if(direccion==1){
   if(this.posicion.x + this.velocidad.x <= width - 50){
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
 }
