# Arduino libraries 

The Arduino libraries in this repository are meant to be copied and used in your own projects. The source code is original work, but where it needs other libraries to function properly I will add complete releases as zip files

## DCF77

The DCF77 library adds the ability to read and decode the atomic time broadcasted by the 
DCF77 radiostation. It has been designed to work in conjunction with the Arduino Time 
library and allows a sketch to get the precise CET time and date as a standard C time_t.
The DCF77 Library download. Example sketches have been added to 
1) illustrate and debug the incoming signal 
2) use the library, using the setSyncProvider callback and converting to different 
   time zones. In order to exploit all features in the library, Both the Time and 
   TimeZone library are included.
   
## EEPROMex

The EEPROMex library is an extension of the standard Arduino EEPROM library. It extends the functionality of the original Arduino EEPROM library with:

1) Reading, writing to basic types and single bits
2) Reading, writing of any data format. This can be for example structs, strings, etc.
3) Reading, writing of arrays of any format.  

## CmdMessenger v3

CmdMessenger is a messaging library afor the Arduino Platform (and .NET/Mono platform). It has uses the serial port as its transport layer** 

The library can
* Send and receive of commands 
* Write and read multiple arguments
* Write and read all primary data types
* Attach callback functions any received command

The library supports any primary data types, and zero to many multiple arguments. Arguments can either be sent in plain text (to be human readable) 
or in binary form (to be efficient). 

With version 3 also comes a full implementation of the toolkit in C#, which runs both in Mono (http://monodevelop.com/Download) and Visual Studio (http://www.microsoft.com/visualstudio/eng#downloads)
This allows for full 2-way communication between the arduino controller and the PC.
