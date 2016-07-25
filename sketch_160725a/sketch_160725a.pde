 
PImage bulb;
PImage unicorn;

void setup() {
  
  bulb= loadImage("bulb.png");  
  size(bulb.width, bulb.height);
  background(bulb);
  



  unicorn = loadImage("unicorn.png");
}

void draw() {
 background(bulb);
 image(unicorn, mouseX, mouseY);
  

  //if(mousePressed){
  
}


