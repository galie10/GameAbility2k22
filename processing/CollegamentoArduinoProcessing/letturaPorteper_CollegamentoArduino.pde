import processing.serial.*;
Serial serial;

void setup() {
  for(int i = 0; i < Serial.list().length;i++){// loop to read all connected ports
    print(i+" ");
    println(Serial.list()[i]); // the list of all shortcuts on the computer is printed
    String pname= Serial.list()[0]; // select the location where the connection to the arduino is located
    serial = new Serial(this,pname,9600);
  }
}

void draw() {
  if(serial.available() > 0){// check if the data has been written to the serial stream
    String val = serial.readStringUntil('\n');// printed value passed by the arduino
    println(val);// print the passed values
  }
}
