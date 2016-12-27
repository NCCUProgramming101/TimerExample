Timer timer ; 
CountDownTimer cTimer ;
IntervalTimer  iTimer ; 

Coakroach coak ; 

void setup(){
  timer = new Timer () ;
  cTimer = new CountDownTimer (100) ;
  iTimer = new IntervalTimer (1) ;
  coak = new Coakroach();
  timer.start() ;
  cTimer.start();
  iTimer.start();
}

void draw(){
  
  //if (iTimer.arrived()){
  //  //println();
  //  //println("arrived ! times : " + iTimer.times);
    
  //  //println("duration  : " +  timer.duration()  + "\t in Format : " + String.format( "%02d" , floor(timer.duration()) )) ;
  //  println("remaining : " + cTimer.remaining() + "\t in Format : " + String.format( "%02d" , ceil(cTimer.remaining() ))) ;
  //}
  
  coak.draw();
}

void mousePressed(){
  if (timer.isActive()) {
    iTimer.pause() ;
    timer.pause() ; 
    cTimer.pause() ; 
  } else  {
    timer.start() ;
    iTimer.start() ;
    cTimer.start();
  }
}