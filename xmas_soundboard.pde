/*
  Melody
 
 Plays a melody 
 
 circuit:
 * 8-ohm speaker on digital pin 8
 
 created 21 Jan 2010
 modified 14 Oct 2010
 by Tom Igoe 

This example code is in the public domain.
 
 http://arduino.cc/en/Tutorial/Tone
 
 */
 #include "pitches.h"          
          
// Silent night
/*       G A G E x 2
         DDB CCG 
        */
        



// Tannenbaum
  int melody[] = {NOTE_C3, NOTE_F3, NOTE_F3, NOTE_F3, NOTE_G3, NOTE_A3, NOTE_A3, NOTE_A3, 
                  NOTE_A3, NOTE_G3, NOTE_A3, NOTE_AS3, NOTE_E3, NOTE_G3, NOTE_F3}; 

// Stille Nacht
// int melody[] = {NOTE_G3, NOTE_A3, NOTE_G3, NOTE_E3, NOTE_G3, NOTE_A3, NOTE_G3, NOTE_E3,
//                NOTE_D4, NOTE_D4, NOTE_D4, NOTE_B3, NOTE_C4, NOTE_C4, NOTE_C4, NOTE_G3};


// note durations: 4 = quarter note, 8 = eighth note, etc.:
int noteDurations[] = {
  2, 2, 4, 2, 2, 2, 4, 2, 
  4, 4, 4, 1, 2, 2, 2 };
// Stille Nacht
/*     1.385, 4, 2, 1.2, 
    1.385, 4, 2, 1.2, 
    2, 1, 2, 1, 
    2, 1, 2, 1 }; */

  int buttonState = 0;
int sensorPin = A0;
int sensorValue = 0;    
    
void setup() {
  pinMode(6, OUTPUT);  
  pinMode(7, OUTPUT);
  pinMode(5, INPUT);
  Serial.begin(9600);
}

void loop() {
  // no need to repeat the melody.

 sensorValue = analogRead(sensorPin); 

  // check if the pushbutton is pressed.
  // if it is, the buttonState is HIGH:
  if (sensorValue < 100) {     
    // turn LED on:    
    playSong();
  } 
}


void playSong() {
 
  
  // iterate over the notes of the melody:
  for (int thisNote = 0; thisNote < 4; thisNote++) {

    // to calculate the note duration, take one second 
    // divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000/noteDurations[thisNote];
    tone(8, melody[thisNote],noteDuration);
    digitalWrite(7, HIGH);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes / 2);
    // stop the tone playing:
    noTone(8);
    digitalWrite(7, LOW);
    delay(pauseBetweenNotes / 2);
  }
  
  delay(500);

  // iterate over the notes of the melody:
  for (int thisNote = 4; thisNote < 8; thisNote++) {

    // to calculate the note duration, take one second 
    // divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000/noteDurations[thisNote];
    tone(8, melody[thisNote],noteDuration);
    digitalWrite(6, HIGH);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes / 2);
    // stop the tone playing:
    noTone(8);
    digitalWrite(6, LOW);
    delay(pauseBetweenNotes / 2);
  }

  delay(500);
  
    // iterate over the notes of the melody:
  for (int thisNote = 8; thisNote < 12; thisNote++) {

    // to calculate the note duration, take one second 
    // divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000/noteDurations[thisNote];
    tone(8, melody[thisNote],noteDuration);
    digitalWrite(7, HIGH);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes / 2);
    // stop the tone playing:
    noTone(8);
    digitalWrite(7, LOW);
    delay(pauseBetweenNotes / 2);
  }
  
//    delay(0);
    
      // iterate over the notes of the melody:
  for (int thisNote = 12; thisNote < 15; thisNote++) {

    // to calculate the note duration, take one second 
    // divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000/noteDurations[thisNote];
    tone(8, melody[thisNote],noteDuration);
    digitalWrite(6, HIGH);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes / 2);
    // stop the tone playing:
    noTone(8);
    digitalWrite(6, LOW);
    delay(pauseBetweenNotes / 2);
  }
}
