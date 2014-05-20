/*
 * SyncProvider.ino
 * example code illustrating time synced from a DCF77 receiver
 * Thijs Elenbaas, 2012
 * This example code is in the public domain.

  This example shows how to fetch a DCF77 time and synchronize
  the internal clock. In order for this example to give clear output,
  make sure that you disable logging  from the DCF library. You can 
  do this by commenting out   #define VERBOSE_DEBUG 1   in Utils.cpp. 
 */

#include <DCF77.h>       //https://github.com/thijse/Arduino-Libraries/downloads
#include <Time.h>        //http://www.arduino.cc/playground/Code/Time

#define DCF_PIN 2	         // Connection pin to DCF 77 device
#define DCF_INTERRUPT 0		 // Interrupt number associated with pin

time_t prevDisplay = 0;          // when the digital clock was displayed
time_t time;
DCF77 DCF = DCF77(DCF_PIN,DCF_INTERRUPT);


void setup() {
  Serial.begin(9600); 
  DCF.Start();
  setSyncInterval(30);
  setSyncProvider(getDCFTime);
  // It is also possible to directly use DCF.getTime, but this function gives a bit of feedback
  //setSyncProvider(DCF.getTime);

  Serial.println("Waiting for DCF77 time ... ");
  Serial.println("It will take at least 2 minutes until a first update can be processed.");
  while(timeStatus()== timeNotSet) { 
     // wait until the time is set by the sync provider     
     Serial.print(".");
     delay(2000);
  }
}


void loop()
{  
  if( now() != prevDisplay) //update the display only if the time has changed
  {
    prevDisplay = now();
    digitalClockDisplay();  
  }
}

void digitalClockDisplay(){
  // digital clock display of the time
  Serial.println("");
  Serial.print(hour());
  printDigits(minute());
  printDigits(second());
  Serial.print(" ");
  Serial.print(day());
  Serial.print(" ");
  Serial.print(month());
  Serial.print(" ");
  Serial.print(year()); 
  Serial.println(); 
}

void printDigits(int digits){
  // utility function for digital clock display: prints preceding colon and leading 0
  Serial.print(":");
  if(digits < 10)
    Serial.print('0');
  Serial.print(digits);
}

time_t getDCFTime()
{ 
  time_t DCFtime = DCF.getTime();
  // Indicator that a time check is done
  if (DCFtime!=0) {
    Serial.print("X");  
  }
  return DCFtime;
}
