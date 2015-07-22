void draw() {
  // Draw map and darken it a bit
  map.draw();
  overlays();
  textFont(main);
  compass.draw();
  textFont(small);
  barscale.draw();
  textFont(main);
  if (debug) {
  debugDisplay.draw();
  //tuioCursorHandler.drawCursors();
  time = 1359417602000000L;
  
  }
  displayTime(time);
  
  
  /*
  fill(0, 200);
  rect(0, 0, width, height);

  noStroke();

  // Iterate over all bike stations
  for (BikeStation bikeStation : bikeStations) {
    // Convert geo locations to screen positions
    ScreenPosition pos = map.getScreenPosition(bikeStation.location);
    // Map number of free bikes to radius of circle
    float s = map(bikeStation.bikesAvailable, 0, maxBikesAvailable, 1, 50);
    // Draw circle according to available bikes
    fill(255, 0, 255, 50);
    ellipse(pos.x, pos.y, s, s);

    if (bikeStation.showLabel) {
      fill(200);
      text(bikeStation.name, pos.x - textWidth(bikeStation.name)/2, pos.y);
    }
    
  }
  
  */
}

void overlays(){
  color recta = color(100, 200);
  color rectb = color(51, 200);
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
  rect(width - 250, 0, 300, 30, 0, 0, 0, 4);
}
