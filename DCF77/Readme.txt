ReadMe file for Arduino DCF77 Library 0.9.5
//https://github.com/thijse/Arduino-Libraries/downloads
Thijs Elenbaas 2012

This work is licensed under the under the terms of the GNU Lesser General Public License 
as published by the Free Software Foundation; either version 2.1 of the License, or 
(at your option) any later version. To view a copy of this license, write to the 
Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA

--------------------------------------------------------------------------------
DCF77 is a library that provides timekeeping functionality for Arduino.

This library is designed to work in conjunction with the Arduino Time library at
http://www.arduino.cc/playground/Code/Time. The Time library must be referenced
in your sketch with #include <Time.h>. This documentation assumes some
familiarity with the Time library.

The primary aim of this library is convert the pulse sequence coming from a DC77 receiver
into into a valid and up-to-date time, The DC& receiver picks up the the atomic time (CET) 
broadcasted by the DCF77 radiostation which outputs the local (CET) time. 

Example sketches illustrate show 
1) how to debug the incoming signal,
2) how to use the library to retreive a valid time
3) how to use the library in conjunction with the setSyncProvider callback provided
   by the Time library
4) how to convert the time to a different timezone   


