// have to add this to the end of the file to make it a valid gpx file
// </trkseg></trk></gpx>

#include <SoftwareSerial.h>
#include <stdlib.h>

#define MAX_NMEA 128
#define MAX_DATETIME 23

bool STILL_STARTING = true;
char nmea[MAX_NMEA+1];
double lat = 0.0;
double lon = 0.0;
char datetime[MAX_DATETIME+1];
int i;
unsigned char checksum;
char str[MAX_DATETIME];

SoftwareSerial mySerial(10, 11); // RX, TX

void setup()
{
  Serial.begin(9600);
  while (!Serial)
  {
    ; // wait for serial port to connect. Needed for native USB port only
  }

  Serial.println("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\" ?>");
  Serial.println("<gpx creator=\"cat_tracker by xorrbit\">");
  Serial.print("<metadata><link href=\"https://github.com/xorrbit/cat_tracker\"><text>xorrbit/cat_tracker on GitHub</text></link><time>");

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
      } while (nmea[i++] != '\n' && (i < MAX_NMEA));
      
      nmea[--i] = '\0';
      // nmea now contains the message (or the most we could grab of it)
      if (nmea[1] == 'G' &&
          nmea[2] == 'P' &&
          nmea[3] == 'R' &&
          nmea[4] == 'M' &&
          nmea[5] == 'C')
      {
        //Serial.println(nmea);
        // double check our checksum
        if (calcChecksum(nmea) == (unsigned char) strtoul(&nmea[i-3], 0, 16))
        {
          if(parseGPRMC(nmea, &lat, &lon, datetime))
          {
            if (STILL_STARTING)
            {
              Serial.print(datetime);
              Serial.println("</time></metadata>");
              Serial.println("<trk><trkseg>");
              STILL_STARTING = false;
            }
            else
            {
              Serial.print("<trkpt lat=\"");
              dtostrf(lat, 4, 6, str);
              Serial.print(str);
              Serial.print("\" lon=\"");
              dtostrf(lon, 4, 6, str);
              Serial.print(str);
              Serial.print("\"><time>");
              Serial.print(datetime);
              Serial.println("</time></trkpt>");
            }
          }
        }
      }
    }
  }
}

bool parseGPRMC(char *nmea, double *lat, double *lon, char *datetime)
{
  int i = 0;
  int j = 0;
  int latstart = 0;
  char coords[20];
  
  // $GPRMC,time,active,latitude,N/S,longitude,W/E,speed,angle,date,mag,checksum
  while (nmea[i++] != ','); // skip $GPRMC,
  // parse out time
  datetime[10] = 'T';
  datetime[11] = nmea[i++];
  datetime[12] = nmea[i++];
  datetime[13] = ':';
  datetime[14] = nmea[i++];
  datetime[15] = nmea[i++];
  datetime[16] = ':';
  datetime[17] = nmea[i++];
  datetime[18] = nmea[i++];
  datetime[19] = nmea[i++]; // .
  datetime[20] = nmea[i++];
  datetime[21] = nmea[i++];
  datetime[22] = 'Z';
  datetime[23] = '\0';
  i++; // ,
  // if we don't have a fix, return false
  if (nmea[i] != 'A')
  {
    return false;
  }
  while (nmea[i++] != ',');
  // lat  
  coords[j++] = nmea[i++];
  coords[j++] = nmea[i++];
  coords[j] = '\0';

  *lat = strtod(coords, 0);
  j = 0;
  while (nmea[i] != ',')
    coords[j++] = nmea[i++];
  coords[j] = '\0';
  *lat += strtod(coords, 0) / 60.0;
  i++; // ,
  if (nmea[i++] == 'S') // N or S
    *lat = -*lat;
  i++; // ,

  // lon
  j = 0;  
  coords[j++] = nmea[i++];
  coords[j++] = nmea[i++];
  coords[j++] = nmea[i++];
  coords[j] = '\0';

  *lon = strtod(coords, 0);
  j = 0;
  while (nmea[i] != ',')
    coords[j++] = nmea[i++];
  coords[j] = '\0';
  *lon += strtod(coords, 0) / 60.0;
  i++; // ,
  if (nmea[i++] == 'W') // W or E
    *lon = -(*lon);

  i++; // ,
  while (nmea[i++] != ','); // skip speed,
  while (nmea[i++] != ','); // skip angle,

  // parse out date
  datetime[7] = '-';
  datetime[8] = nmea[i++];
  datetime[9] = nmea[i++];
  datetime[4] = '-';
  datetime[5] = nmea[i++];
  datetime[6] = nmea[i++];
  datetime[0] = '2';
  datetime[1] = '0';
  datetime[2] = nmea[i++];
  datetime[3] = nmea[i++];
  
  return true;
}

// it ends with *XX, a checksum
// The checksum field consists of a '*' and two hex digits representing a
// 8 bit exclusive OR of all characters between, but not including,
// the '$' and '*'.
unsigned char calcChecksum(char *nmea)
{
  int i = 1;
  unsigned char sum = 0;
  
  sum = nmea[i++];
  while (nmea[i] != '*')
    sum = sum ^ nmea[i++];
    
  return sum;
}
