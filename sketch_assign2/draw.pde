void draw() {
  // Draw map and darken it a bit
  map.draw();
  
  if (debug) {
  debugDisplay.draw();
  }
  //map.zoomAndPanTo(dublinLocation, 12);
  
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
