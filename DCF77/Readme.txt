Readme file for Arduino DCF77 Library

Time is a library that provides timekeeping functionality for Arduino.

Example sketches illustrate how similar sketch code can be used with: a Real Time Clock,
internet NTP time service, GPS time data, and Serial time messages from a computer
for time synchronization.

The functions available in the library include:

The Time directory contains the Time library and some example sketches
illustrating how the library can be used with various time sources:


-TimeGPS gets time from a GPS
 This requires the TinyGPS and NewSoftSerial libraries from Mikal Hart:
 http://arduiniana.org/libraries/TinyGPS and http://arduiniana.org/libraries/newsoftserial/

Differences between this code and the playground DateTime library
although the Time library is based on the DateTime codebase, the API has changed.
Changes in the Time library API:
- time elements are functions returning int (they are variables in DateTime)
- Years start from 1970 
- days of the week and months start from 1 (they start from 0 in DateTime)
- DateStrings do not require a seperate library
- time elements can be accessed non-atomically (in DateTime they are always atomic)
- function added to automatically sync time with extrnal source
- localTime and maketime parameters changed, localTime renamed to breakTime
 
Technical notes:

Internal system time is based on the standard Unix time_t.
The value is the number of seconds since Jan 1 1970.
System time begins at zero when the sketch starts.
  
The internal time can be automatically synchronized at regular intervals to an external time source.
This is enabled by calling the setSyncProvider(provider) function - the provider argument is
the address of a function that returns the current time as a time_t.
See the sketches in the examples directory for usage.

The default interval for re-syncing the time is 5 minutes but can be changed by calling the 
setSyncInterval( interval) method to set the number of seconds between re-sync attempts.

