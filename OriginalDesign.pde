int y = 100;
int z = 200;
boolean hitGround = false;
boolean bouncingUp = false;

void setup(){
size(500,500);
}

void draw(){
background(100,190,255);
fill(200,0,0);
ellipse(250,y,100,100);
if(hitGround == false){
y = y + 10;
}
if(y == 350){
hitGround = true;
bouncingUp = true;
}
if(bouncingUp == true){
y = y - 10;
}
if(y == z && bouncingUp == true){
hitGround = false;
bouncingUp = false;
}
ground();
sun();
}

void sun(){
fill(255,245,90);
ellipse(0,0,200,200);
}

void ground(){
noStroke();
fill(100,100,100);
rect(0,400,500,400);
}


