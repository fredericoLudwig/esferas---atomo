class Cubo {   

  int cx = 0 ;
  int cy = 0;
  int cvelocidade = 1;


  void aparecercubo() {
//noStroke();

    for (cx = cvelocidade; cx<width; cx++) {   
      cy =cx;
      if (mousePressed) { 
        pushMatrix();
        translate(width/2, height/2, 0); 
        lights();
        rotateY(mouseY);
//        fill(random(127, 255), 30, 200);
        sphere(300);
        popMatrix();
      } else {for (cx = cvelocidade; cx<width; cx++) {   
      cy =cx;
      cvelocidade = cvelocidade+1;
        pushMatrix();
        translate(cx+cvelocidade, cy+cvelocidade, 0); 

        rotateY(mouseY);
       // fill(random(127, 255), 30, 200);
        box(10,10,100);
        popMatrix();
      }
    }
  }
  }}