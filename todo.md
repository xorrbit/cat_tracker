# To Do
* Get atmega running at lower frequency to save power. Currently it runs at 16 MHz, and a quick test changing the clock prescaler shows it doesn't work properly at 1 MHz, this may be because either the SoftSerial library or the SD card library depends on the 16 MHz clock for some dumb reason.

* Use some low power modes on the atmega. Can turn off the ADC, whatever timers aren't being used, etc. Also can sleep the CPU in between GPS updates, and have it wake up when there is UART activity from the GPS.

* Possibly only turn on the GPS module intermittently. Once every minute or 30 seconds would save a lot of power. It only takes 3 seconds to get a fix upon "hot" power up, which is if all the old satellites it had when powered down are still in view.

* Add a lipo low-voltage cutoff circuit to the schematic, such that you can hook a 1S lipo up to it and run it until it's "dead" (use 80% of the charge) without ruining the lipo. Here is an example, using a S-8261 battery protection IC: https://github.com/rororor/li_prot-02

* Change the footprints to all SMD stuff and make the battery connector footprint a JST plug suitable for a 1S lipo.

* Add open source hardware logo to pcb.

