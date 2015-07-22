

// function to display time information in a human readable format instead of unix
void displayTime(long unixSeconds){

  Date date = new Date(unixSeconds/1000L); // *1000 is to convert seconds to milliseconds
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss z"); // the format of your date
  sdf.setTimeZone(TimeZone.getTimeZone("GMT")); // give a timezone reference for formating (see comment at the bottom
  String formattedDate = sdf.format(date);
  //System.out.println(formattedDate); // print to console the date/time
  textFont(main);
  fill(255);
  text(formattedDate, width - 230, 20);
  text("Playback speed: " + Math.round(speed) + " %", width - 230, 40);
}


