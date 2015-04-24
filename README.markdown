# NOTICE 

This Repository has been suspended. It used to contain multiple Arduino libraries. However, following Arduino Library guidelines, each of these libraries has gotten it's own repository. See below to find these

## DCF77

The DCF77 library adds the ability to read and decode the atomic time broadcasted by the 
DCF77 radiostation. It has been designed to work in conjunction with the Arduino Time 
library and allows a sketch to get the precise CET time and date as a standard C time_t.
The DCF77 Library download. Example sketches have been added to 
1) illustrate and debug the incoming signal 
2) use the library, using the setSyncProvider callback and converting to different 
   time zones. In order to exploit all features in the library, Both the Time and 
   TimeZone library are included.
   
This library can now be found here: https://github.com/thijse/Arduino-DCF77
   
   
## EEPROMex

The EEPROMex library is an extension of the standard Arduino EEPROM library. It extends the functionality of the original Arduino EEPROM library with:

- Reading, writing to basic types and single bits
- Reading, writing of any data format. This can be for example structs, strings, etc.
- Reading, writing of arrays of any format.  

This library can now be found here: https://github.com/thijse/Arduino-EEPROMEx


## CmdMessenger 

CmdMessenger is a messaging library afor the Arduino Platform (and .NET/Mono platform). It has uses the serial port as its transport layer** 

The library can

- Send and receive of commands 
- Write and read multiple arguments
- Write and read all primary data types
- Attach callback functions any received command

This library can now be found here: https://github.com/thijse/Arduino-CmdMessenger
