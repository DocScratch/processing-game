//Here is the code to program the Arduino Uno
//to read the information from one analog sensor
//and one digital sensor and output them to the
//serial port (from which Processing can read them.

//As is probably obvious, you would need to copy and
//paste this code into Arduino then upload it to the
//Uno for this to work. It doesn't do anything in
//Processing, which is why I commentented it out. But
//this way you can see it along with the Processing code.

/*
int pushButton = 3; //Connected the pushbutton to digital
//pin 3 to read the button's state.
int potent = A0; //Connected the potentiometer to analog
//pin 0 to read the button's state.
int potValue = 0; //Measure potentiometer output.
int pushValue = 0; //Measure pushbutton output.

void setup(){
  Serial.begin(9600); //Initialize the serial port and
  //tell it to communicate at 9600 bauds.
  pinMode(pushButton, INPUT); //Get info from the button.
}

void loop(){
  potValue = analogRead(potent); //Measure potent. output.
  pushValue = digitalRead(pushButton); //Measure button output.
  Serial.print(potValue); //Send potent. reading to serial.
  Serial.print(","); //Will use this in Processing to separate
  //the different outputs.
  Serial.print(pushValue); //Send button reading to serial.
  Serial.print(",");
  Serial.print("\n"); //Make a line break (again for
  //communicating with Processing.
  
  delay(1); //Add just a little bit of delay to balance out the
  //fact that we are getting and sending information all the time.
  
}
*/
