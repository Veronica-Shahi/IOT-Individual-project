int inches=0;
int cm=0;

long readUltrasonicDistance(int triggerPin, int echoPin)
{
  pinMode(triggerPin, OUTPUT); // clear the trigger
  digitalWrite(triggerPin,LOW);
  delayMicroseconds(2);

  digitalWrite(triggerPin,HIGH);
  delayMicroseconds(10);
  digitalWrite(triggerPin,LOW);
  pinMode(echoPin,INPUT);

  return pulseIn(echoPin, HIGH);
  
  
  }

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
  cm= 0.01723 * readUltrasonicDistance(7,6);
  //convert to inches by dividng by 2.54
  inches=(cm/2.54);
  Serial.print(inches);
  Serial.print("in, ");
  Serial.print(cm);
  Serial.println("cm");
  delay(100);

}
