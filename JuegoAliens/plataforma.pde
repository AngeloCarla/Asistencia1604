class Plataforma{
 private PVector posicion;
 private float ancho = 20;
 private float alto = 10;
 private float dist = 5;
 
 public Plataforma(){
  this.posicion = new PVector(0, 550);
  } 
 
 public void dibujar(){
  for (float y = this.posicion.y; y < height; y += (this.alto + this.dist)) {
   for (float x = this.posicion.x; x < width; x += (this.ancho + this.dist)) {
    float fila = (int)((y - this.posicion.y) / (this.alto + this.dist)) % 2 * (this.ancho / 2);
    fill(80,21,129);
    strokeWeight(3);
    stroke(63,11,106);
    rect(x + fila, y, this.ancho, this.alto);
    }
   }
  }
 }
