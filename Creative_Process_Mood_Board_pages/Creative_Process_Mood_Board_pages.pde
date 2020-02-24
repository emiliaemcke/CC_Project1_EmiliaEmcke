 /* SCENE 1 
   I want to for this scene have each time the mouse is pressed more circles appear on the screen
   The main character then will look around the first few times and later will disappear 
   
   then the other circles will be wiped clear and the main character will appear again 
   this time looking relieved and other symbols appearing that indicate he is at ease 
*/

int bodyLoc= 200;
int value = 0;
float randX= random(100, 600);
float randY= random(200, 600);
void setup () { 
  size (600, 600);
  background (#CCADF5);
}

void draw () { 
  if (keyPressed ==true) {
    stroke(220, 0, 220);
    fill(255);
    ellipse(randX, randY, 40, 40);    // Top circle
    fill(0); // make pupils black  

    ellipse(randX-7, randY-1, 10, 10); // pupil 
    ellipse(randX+7, randY-1, 10, 10); // pupil

    fill(255);
    ellipse(randX+50, randY +40, 40, 40); // Middle circle
    fill(0); // make pupils black 
    ellipse(randX+43, randY-1 +40, 10, 10); // pupil 
    ellipse(randX+57, randY-1 +40, 10, 10); // pupil
    fill(255);
    ellipse(randX-50, randY +40, 40, 40); // Bottom circle
    fill(0);
    ellipse(randX-43, randY-1 +40, 10, 10); // pupil 
    ellipse(randX-57, randY-1 +40, 10, 10); // pupil
  }

  //Body & eyes 
  fill(255);
  stroke(220, 0, 220);
  ellipse (bodyLoc, bodyLoc, bodyLoc, 150); // bodyLoc= 200
  stroke(1);
  stroke(220, 0, 220);
  ellipse(bodyLoc, bodyLoc-30, 50, 50);
  ellipse(bodyLoc +90, bodyLoc-30, 50, 50);
  fill( 0);
  ellipse (bodyLoc+20, bodyLoc-30, 20, 20);
  ellipse (bodyLoc +110, bodyLoc-30, 20, 20);

  //mouth 
  stroke(220, 0, 220);
  fill(220, 0, 220, 50);
  curve(280, 200, 250, 230, 190, 240, 160, 50);
  line(190, 240, 248, 230);
}
void crowd () {
  ellipse(randX, randY, 30, 30);    // Top circle
  fill(0); // make pupils black  
  ellipse(randX-5, randY-1, 10, 10); // pupil 
  ellipse(randX+5, randY-1, 10, 10); // pupil
  fill(220, 0, 220);
  ellipse(randX+50, randY +40, 30, 30); // Middle circle
  fill(0); // make pupils black 
  ellipse(randX+45, randY-1 +40, 10, 10); // pupil 
  ellipse(randX+55, randY-1 +40, 10, 10); // pupil
  fill(220, 0, 220);
  ellipse(randX-50, randY +40, 30, 30); // Bottom circle
  fill(0);
  ellipse(randX-45, randY-1 +40, 10, 10); // pupil 
  ellipse(randX-55, randY-1 +40, 10, 10); // pupil
}
