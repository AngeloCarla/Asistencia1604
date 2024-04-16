class Ovni{
  private PVector posicion = posicion;
  private PVector velocidad = velocidad;
  
 public Ovni(){
   //imagen
  println("Ovni");
  posicion = new PVector(this.posicion.x,this.posicion.y);
  velocidad = new PVector(10,0);
  }
  
 public void dibujar(){
  ellipse(50,100,80, 80);
  }
  
 public void mover(){
   
  }

}
