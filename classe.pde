class Esfera {
  float x = random(pmouseX, pmouseX-0.1) ;
  float y = random(pmouseY, pmouseY-0.1) ;
  float rx =    random(pmouseX,pmouseX-0.1) ;

  float ry =    random(pmouseY, pmouseY-0.1) ;
  float rz =  random(0.01, -0.01);

  void ir() {
    for (x = 0; x<width; x++) {
      float rx=(pmouseX ) ;
      rx = rx+0.5;
      float ry =(pmouseY );

      ry = ry+0.5;//
      rz= rz+0.01;
    }
    if (rx < 0||ry<0) {
      rx = rx * -1;
      rz = rz * -1;
      ry = ry * -1;
      x=x*-1 ;
      y = y * -1;
    }
  }
  void aparecer1 () {
    pushMatrix();

    rotateY(ry-0.5);

    rotateX(rx-0.5);
    rotateZ(rz-0.001);
    translate(random(0.01, -0.01), random(0.01, -0.01), random(-0.001, 0.001)); 


    lights();
    //noFill();

    noStroke();
    fill(random(cor1, cor2),cor3, cor1);
    sphere(200);
    popMatrix();
  }
  void aparecer2 () {

    rotateY(ry-0.9);
    rotateZ(rz-0.01);

    rotateX(rx-0.9);
    pushMatrix();


    translate(random(x, -x), random(y, -y), random(-0.001, 0.001)); 


    lights();
    //noFill();

    noStroke();
    fill(random(cor1, cor2),cor3, cor1);
    sphere(150);
    popMatrix();
  }
  void aparecer3 () {

    pushMatrix();
    rotateZ(rz-0.1);

    rotateY(ry-0.05);

    rotateX(rx-0.05);  

    translate(random(x, -x), random(y, -y), random(-0.001, 0.001)); 


    lights();
    //noFill();

    noStroke();
    fill(random(cor1, cor2),cor3, cor1);
    sphere(150);
    popMatrix();
  }
  void aparecer4 () {
 

    pushMatrix();
   rotateZ(rz-0.5);

    rotateY(ry-0.005);

    rotateX(rx-0.005);  
    translate(random(x, -x), random(y, -y), random(-0.001, 0.001)); 


    lights();
    //noFill();

    noStroke();
    fill(random(cor1, cor2),cor3, cor1);
    sphere(150);
    popMatrix();
  }
}