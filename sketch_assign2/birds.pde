
void birdarea() {
  db = new SQLite( this, "oystercatcher_data.sqlite" );  // open database file

  if ( db.connect() ) {

    db.query( "select max(latitude) as a, min(latitude) as b, max(longitude) as c, min (longitude) as d from gps" );
    while (db.next ())
    {
      birdlat = ((db.getFloat("a") + db.getFloat("b"))/2) ;

      birdlong = ((db.getFloat("c") + db.getFloat("d"))/2);
    }
  }
}

void birds() {
  if ( db.connect() ) {

    db.query( "select distinct(birdID) from gps" );
    while (db.next ())
    {
      birds.add(db.getInt("birdID"));
      
    }
  }
}



void birdpos() {
  for (int index=0; index<birds.size (); index++) {
    
    if ( db.connect() ) {

    db.query( "select * from gps where birdID =" + birds.get(index) );
    while (db.next ())
    {
      println(db.getInt("obsID"));
      
      SimplePointMarker bird = new SimplePointMarker(new Location(db.getFloat("latitude"), db.getFloat("longitude")));
      if (birds.get(index) == 166){
        

      bird.setColor(color(44, 91, 167));
      }
      else if (birds.get(index) == 167){
        

      bird.setColor(color(233, 57, 35));
      }
      else if (birds.get(index) == 169){
        

      bird.setColor(color(59, 130, 79));
      }
      bird.setStrokeWeight(0);
      map.addMarkers(bird);  
  }
  }
  }
}
