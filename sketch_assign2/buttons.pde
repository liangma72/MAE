void buttonSetup(){
  
  int zoomBoxLocX = width - 55;
  
  int zoomBoxLocY = height - 100;
  cp5 = new ControlP5(this);
  
  // Map zoom/reset buttons
    
     cp5.addBang("in", zoomBoxLocX, zoomBoxLocY, 20, 20)
     .setLabel("+")
    .align(ControlP5.CENTER, ControlP5.CENTER, ControlP5.CENTER, ControlP5.CENTER);
    
     cp5.addBang("out", zoomBoxLocX, zoomBoxLocY + 20, 20, 20)
    .setLabel("-")
    .align(ControlP5.CENTER, ControlP5.CENTER, ControlP5.CENTER, ControlP5.CENTER);
    
    
      cp5.addBang("home", zoomBoxLocX - 5, zoomBoxLocY + 50, 30, 20)
     .setLabel("Reset")
    .align(ControlP5.CENTER, ControlP5.CENTER, ControlP5.CENTER, ControlP5.CENTER);
  

}

void keyPressed() {
    if (key == '1') {
        map.mapDisplay.setProvider(provider1);
    } else if (key == '2') {
        map.mapDisplay.setProvider(provider2);
    } else if (key == '3') {
        map.mapDisplay.setProvider(provider3);
    }
}

void controlEvent(ControlEvent theEvent) {

  if (theEvent.isController()) { 

    print("control event from : "+theEvent.controller().name());
    println(", value : "+theEvent.controller().value());

    if (theEvent.controller().name()=="out") {
      map.zoomLevelOut();
      
    }
    if (theEvent.controller().name()=="in") {
      map.zoomLevelIn();
    }if (theEvent.controller().name()=="home") {
      map.zoomAndPanTo(dublinLocation, 12);
    }
  }
}
