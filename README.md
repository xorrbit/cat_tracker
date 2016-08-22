# Cat Tracker

This Ardunio project reads location data from a GPS module and writes waypoints to a GPX file on a MicroSD card.

# A Bit More Technical info

This parses NMEA messages sent over a serial channel at 9600 bps. I've configured the NEO-7M to send out updates in low power mode at a rate of 1 Hz. It looks for GPRMC messages to get the lat/lon and date/time, and GPGSA messages to get the PDOP (position degree of precision) / HDOP (horizontal degree of precision) / VDOP (vertical degree of precision).

Once it has this info it creates a new file on the SD card, with the filename based on the date/time as DDHHMMSS.GPX, and starts writing GPX trkpt elements.

It was initially developed for the MSP430 microcontroller but the limited SRAM caused me to port it over to Arduino.

# Development
Since my GPS module/antenna (a uBlox NEO-7M) gets horrible reception indoors, I had to do most of my development and testing outside, so I set up a workstation on my balcony.

![img_20160821_150615](https://cloud.githubusercontent.com/assets/526414/17857945/66568f7e-6849-11e6-95c4-0d8ab43c9026.jpg)

This was prototype #2 - switched to an Ardweeny on a breadboard instead of using a full Arduino.
![img_20160821_232801](https://cloud.githubusercontent.com/assets/526414/17857966/77c36b2e-6849-11e6-877e-ba12630e25bd.jpg)

This was prototype #3 - 3xAAA batteries for power, the Ardweeny and MicroSD card adapter (all soldered up), and the GPS module.
![img_20160821_231238](https://cloud.githubusercontent.com/assets/526414/17857949/6c9f5c76-6849-11e6-9e36-d9c97a9fa87e.jpg)

Prototype #3 but all taped up in a compact-ish package. SNES cart for scale. Weighs in at 85g or so, with 35g of that being the batteries.
![img_20160821_232125](https://cloud.githubusercontent.com/assets/526414/17857957/71716e2e-6849-11e6-813b-914ae6ce6211.jpg)
![img_20160821_232220](https://cloud.githubusercontent.com/assets/526414/17857961/73cf87a0-6849-11e6-86c3-2e979b99fa28.jpg)
![img_20160821_232436](https://cloud.githubusercontent.com/assets/526414/17857963/75ba4eb0-6849-11e6-8cdd-dcba2cd7d1c8.jpg)
