float cor1 =222; 
float cor2 = 255;
float cor3 = 220;
int ccx = 0 ;
int ccy = 0;
float offset2 = 0;
import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

PeasyCam cam;
Esfera[] esfera = new Esfera[30];
Cubo[] cubo = new Cubo[30];
void setup() {
  colorMode(HSB);
  cam = new PeasyCam(this, 300);
  size(640, 360, P3D);
  for (int i = 0; i < esfera.length; i++) {
    esfera[i] = new Esfera();
  }
  for (int b = 0; b < cubo.length; b++) {
    cubo[b] = new Cubo();
    // fullScreen(P3D);
  }
}
void draw() {
  background(255, 150, 255);
  for (int i = 0; i < esfera.length; i++) {
    esfera[i].ir();

    esfera[i].aparecer1();
    esfera[i].aparecer2();
    esfera[i].aparecer3();
    esfera[i].aparecer4();
  }
  for (int b = 0; b < cubo.length; b++) {

//noStroke();
    cubo[b].aparecercubo();
  }
 for (ccx = 0; ccx<width; ccx++) {
      ccy = ccx;
//noStroke();
    pushMatrix();
    translate(noise(ccx, width), noise(ccy, height), 0); 
    rotateX(ccx);
    rotateY(ccy);
      stroke(random(cor1+offset2, cor2+offset2)%256,cor3+130, cor1-30);
      fill(random(cor1+offset2, cor2+offset2)%256,cor3, cor1);

    box(5, 5, 50);
    popMatrix();
  }
}