#include <SoftwareSerial.h>

#define MAX_NMEA 128
#define MAX_COORDS 32

char nmea[MAX_NMEA+1];
char coords[MAX_COORDS];
int i;

SoftwareSerial mySerial(10, 11); // RX, TX

void setup()
{
  Serial.begin(9600);
  while (!Serial)
  {
    ; // wait for serial port to connect. Needed for native USB port only
  }

  Serial.println("Starting");

  mySerial.begin(9600);
}

void loop()
{
  if (mySerial.available())
  {
    nmea[0] = mySerial.read();
    // if we hit a $, read until a newline
    if (nmea[0] == '$')
    {
      i = 1;
      do
      {
        while (mySerial.available() < 1);
        nmea[i] = mySerial.read();
      } while (nmea[i++] != '\n' && ((i + 2) < MAX_NMEA));
      nmea[i-1] = '\0';
      // nmea now contains the message (or the most we could grab of it)
      Serial.print("Got message: ");
      Serial.println(nmea);
      if (nmea[1] == 'G' &&
          nmea[2] == 'P' &&
          nmea[3] == 'R' &&
          nmea[4] == 'M' &&
          nmea[5] == 'C')
      {
        Serial.println("Coordinates detected, parsing...");
        parseCoords(nmea, coords);
        Serial.print("Parsed coords:");
        Serial.println(coords);
      }
    }
  }
}

void parseCoords(char *nmea, char *coords)
{
  int i = 0;
  int j = 0;
  int latstart = 0;
  
  // $GPRMC,time,active,latitude,N/S,longitude,W/E,speed,angle,date,mag,checksum
  while (nmea[i++] != ',');
  while (nmea[i++] != ',');
  while (nmea[i++] != ',');
  // lat
  coords[j++] = '+'; // + or -
  
  coords[j++] = nmea[i++];
  coords[j++] = nmea[i++];
  coords[j++] = ' ';
  while (nmea[i] != ',')
    coords[j++] = nmea[i++];
  i++; // ,
  if (nmea[i++] == 'S') // N or S
    coords[0] = '-';
  i++; // ,
  
  coords[j++] = ',';
  
   // lat
  latstart = j;
  coords[j++] = '+';
  coords[j++] = nmea[i++];
  coords[j++] = nmea[i++];
  coords[j++] = nmea[i++];
  coords[j++] = ' ';
  while (nmea[i] != ',')
    coords[j++] = nmea[i++];
  i++;
  if (nmea[i++] == 'W')
    coords[latstart] = '-';
  coords[j++] = '\0';
  
  return;  
}

