PImage img;
float t = 0; 




void setup() {
    size(1920, 1080);
    background(255);
    img = loadImage("aurora_1.png");
   
}

void draw() {
  
  image(img,0,0);
  smooth();
  t = t + 0.01;
  
    stroke(0);  
    fill(0,0,30,30);
    rect(0,0,width, height);
    
   
    
    
       
   stroke(93,171,139,20);//green
   
    for (float x = 0; x < width; x = x + 1) {
      float y = map(noise(x/150,t), 0, 1,500, 1000);
      line(x-100,y-500,x-random(100),y-500);
    }
    
   stroke(68,128,127,10);//bluegreen//200
            
    for (float x = 0; x < width; x = x + 1) {
      float y = map(noise(x/150,t), 0, 1.1, 200, 800);
        line(x, y-100,x-random(600),y-100);}

   stroke(204,71,164,10);//pink
            
    for (float x = 0; x < width; x = x + 1) {
      float y = map(noise(x/150,t), 0, 1, 200, 1000);
        line(x-200, y-400,x-random(500),y-400);}


  //moon
  noStroke();
  fill(255,random(200,255));
  ellipse(960,200,random(28,30),random(28,30));
  
  //star
  
  fill(255,255,200,random(255));
  ellipse(random(width),random(500),random(3,6),random(3,6));
 
 
}
  
  
  
  
  
  
    
   
  
