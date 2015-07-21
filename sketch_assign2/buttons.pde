void buttonSetup(){
  
  int zoomBoxLocX = 750;
  
  int zoomBoxLocY = 500;
  cp5 = new ControlP5(this);
  
     cp5.addBang("out", zoomBoxLocX + 5, zoomBoxLocY + 40, 20, 20)
    .setLabel("-")
    .align(ControlP5.CENTER, ControlP5.CENTER, ControlP5.CENTER, ControlP5.CENTER);
    
     cp5.addBang("in", zoomBoxLocX + 5, zoomBoxLocY + 5, 20, 20)
     .setLabel("+")
    .align(ControlP5.CENTER, ControlP5.CENTER, ControlP5.CENTER, ControlP5.CENTER);


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
    }
  }
}
