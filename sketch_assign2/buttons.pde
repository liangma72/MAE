void buttonSetup(){
  // locations for bottom right controls to shift in groups
  int zoomBoxLocX = width - 55;
  int zoomBoxLocY = height - 100;
  int radioLocX = width - 90;
  int radioLocY = height - 250;
  
  // create a ControlP5 object
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
  
  
  // radio buttons to select map providor
    r = cp5.addRadioButton("radioButton")
         .setPosition(radioLocX,radioLocY)
         .setSize(20,20)
         .setColorForeground(color(120))
         .setColorActive(color(255))
         .setColorLabel(color(255))
         .setItemsPerRow(1)
         .setSpacingColumn(50)
         .addItem("Google",1)
         .addItem("OSM Transit",2)
         .addItem("OSM",3)
         .activate(1)
         ;
       
       // set the radio buttoms for the map providor to all have same settings
     for(Toggle t:r.getItems()) {
       t.captionLabel().setColorBackground(color(255,0));
       t.captionLabel().style().moveMargin(-7,0,0,-3);
       t.captionLabel().style().movePadding(7,0,0,3);
       t.captionLabel().style().backgroundWidth = 50;
       t.captionLabel().style().backgroundHeight = 13;
     }
     
     
     // time speed slider  
    cp5.addSlider("Playback Speed")
     .setPosition(10,height - 35)
     .setSize(200,20)
     .setRange(-200,200)
     .setNumberOfTickMarks(17)
     .setValue(100)
     ;
   
}



void controlEvent(ControlEvent theEvent) {

  if (theEvent.isController()) { 

    print("control event from : "+theEvent.controller().name());
    println(", value : "+theEvent.controller().value());


    // zoom and reset button actions
    if (theEvent.controller().name()=="out") {
      map.zoomLevelOut();
    }
    if (theEvent.controller().name()=="in") {
      map.zoomLevelIn();
    }if (theEvent.controller().name()=="home") {
      map.zoomAndPanTo(dublinLocation, 12);
    }
    
  }
  
  // set speed variable to equal the controllers value everytime it's changed
  if (theEvent.isFrom("Playback Speed")) {
    speed = (theEvent.controller().value());
  
  }
  
  
  // switch providors based on radio button
  if(theEvent.isFrom(r)) {
    println(theEvent.getValue());
    switch((int)theEvent.getValue()){
    case(1) : map.mapDisplay.setProvider(provider1);break;
    case(2) : map.mapDisplay.setProvider(provider2);break;
    case(3) : map.mapDisplay.setProvider(provider3);break;
    default: map.mapDisplay.setProvider(provider2);break;
   
  }
}
}
