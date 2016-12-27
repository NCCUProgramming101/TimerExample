Timer timer ; 
CountDownTimer cTimer ;
IntervalTimer  iTimer ; 

Coakroach coak ; 

void setup(){
  timer = new Timer () ;
  cTimer = new CountDownTimer (100) ;
  iTimer = new IntervalTimer (2) ;
  coak = new Coakroach();
  timer.start() ;
  cTimer.start();
  iTimer.start();
  
  
  frameRate(5); // this is just for example, don't use such low frameRate, please. 
}

void draw(){

  
  println("\t duration  : " +  timer.duration()  + "\t in Format : " + String.format( "%02d" , floor(timer.duration()) )) ;
  println("\t remaining : " + cTimer.remaining() + "\t in Format : " + String.format( "%02d" , ceil(cTimer.remaining() ))) ;
  println();
  
  if (iTimer.arrived()) println("Hello \n") ;
  
  coak.draw();
}

void mousePressed(){
  if (timer.isActive()) {
    timer.pause() ;
    iTimer.pause() ;
    cTimer.pause() ; 
  } else  {
    timer.start() ;
    iTimer.start() ;
    cTimer.start();
  }
}