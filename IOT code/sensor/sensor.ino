int trigPin = 6;
int echoPin = 7;
int pingTravelTime;


void setup() {​​​​​​​
  // put your setup code here, to run once:
  pinMode(6, OUTPUT);
  pinMode(7, INPUT);
  Serial.begin(9600);
}​​​​​​​


void loop() {​​​​​​​
  // put your main code here, to run repeatedly:
  digitalWrite(6, LOW);
  delayMicroseconds(10);
  digitalWrite(6, HIGH);
  delayMicroseconds(10);
  digitalWrite(6, LOW);
  pingTravelTime = pulseIn(7, HIGH);
  delay(20);
  Serial.print("PingtravelTime: "+ pingTravelTime);
  
  
}​​​​​​​
