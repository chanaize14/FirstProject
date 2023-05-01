Schedulable s = new ScheduledTaskCleanUp(); 

// crone expression is used to 
// define time inetervals programatically 
// It has 6 parts
// second, minute, hour, dayOfMonth, Month, dayOfWekk
// anything you don't want to fill up
// use question mark

// String crex = '0 1 12 28 4 ?' ; 

String crex = '0 10 12 ? 4 FRI' ;

System.schedule('Task job', crex, s) ; 