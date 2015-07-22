void draw() {
  // Draw map and darken it a bit
  map.draw();
  overlays();
  textFont(main);
  compass.draw();
  textFont(small);
  barscale.draw();
  textFont(main);
  
  float nextTime = timeChange  * speed / 100;

 time += nextTime;
 
  if (debug) {
  debugDisplay.draw();
  
  }
  displayTime(time);
  
}

void overlays(){
  color recta = color(100, 200);
  color rectb = color(30, 200);
  color rectc = color(100, 100);
  fill(recta);
  rect(width - 100, height - 260, 200, 80, 4, 0 ,0 ,0);
  fill(rectb);
  rect(width - 100, height - 180, 200, 158, 0, 0 ,0 ,0);
  fill(recta);
  rect(width - 100, height - 22, 200, 200);
  fill(rectb);
  rect(0, height - 50, 300, 300, 0, 4, 0, 0);
  fill(rectc);
  rect(width - 250, 0, 300, 55, 0, 0, 0, 4);
}
