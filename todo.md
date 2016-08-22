# To Do
* Get atmega running at lower frequency to save power. Currently it runs at 16 MHz, and a quick test changing the clock prescaler shows it doesn't work properly at 1 MHz, this may be because either the SoftSerial library or the SD card library depends on the 16 MHz clock for some dumb reason.
* Use some low power modes on the atmega. Can turn off the ADC, whatever timers aren't being used, etc. Also can sleep the CPU in between GPS updates, and have it wake up when there is UART activity from the GPS.
* Add a lipo low-voltage cutoff circuit to the schematic, such that you can hook a 1S lipo up to it and run it until it's "dead" (use 80% of the charged) without ruining the lipo.
* Change the footprints to all SMD stuff and make the battery connector footprint a JST plug suitable for a 1S lipo.
* Add open source hardware logo to pcb.

