ArrayList<PImage> gif;
int n = 0;

void setup() {
  size(600, 345);

  gif = new ArrayList<PImage>(); //list
  int i = 0;
  while (i < 49) {

    String zero="";
    if ( i < 10) zero = "0";
    gif.add(loadImage("frame_" + zero + i + "_delay-0.05s.png"));
    i++;
  }
  frameRate(30);
}


void draw() {
  PImage frame = gif.get(n);
  image(frame,0,0,width,height);
  n++;
  if (n > 48) n = 0;
}
