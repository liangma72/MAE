void draw() {
  // default font
  textFont(main);
  strokeWeight(0);
  // Draw map and interface overlays
  map.draw();
  overlays();
  displayTime(time);
  
  // draw map elements
  compass.draw();
  // use small font when drawing barscale
  textFont(small);
  barscale.draw();
  textFont(main);

  // calculate and set the time based on the time slider
  float nextTime = timeChange  * speed / 100;

  time += nextTime;


  // unfolding debug screen

    //debugDisplay.draw();

  
  // display current time
  
}


// grouping rectables for interface
void overlays() {
  
  // colours
  color recta = color(100, 200);
  color rectb = color(30, 200);
  color rectc = color(100, 100);
  
  // bottom right
  fill(recta);
  rect(width - 100, height - 260, 200, 80, 4, 0, 0, 0);
  fill(rectb);
  rect(width - 100, height - 180, 200, 158, 0, 0, 0, 0);
  fill(recta);
  rect(width - 100, height - 22, 200, 200);
  
  // bottom left
  fill(rectb);
  rect(0, height - 50, 300, 300, 0, 4, 0, 0);
  
  // time
  fill(rectc);
  rect(width - 250, 0, 300, 55, 0, 0, 0, 4);
}

