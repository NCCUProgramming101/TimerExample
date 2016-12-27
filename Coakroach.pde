class Coakroach {
  
  IntervalTimer iTimer ; 
  float x , y , w , h ;
  
  Coakroach() {
    iTimer = new IntervalTimer(1) ;
    iTimer.start() ;
  }
  

  void draw(){
    if (iTimer.arrived()){
      x = random(0,640 - w );
      y = random(0,480 - h);
      println("Coackroach Randomed!! : " + x + " " + y + "\n");
    }
    
    
  }
  
}