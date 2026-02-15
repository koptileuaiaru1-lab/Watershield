# Quad Motor Controller for Arduino

## Overview
Control 4 DC motors with adjustable speed using Arduino. Each motor drives a circular disk (wheel) and all motors rotate clockwise simultaneously.

## Hardware Requirements
- Arduino Uno
- 4 DC Motors
- 4 PWM pins (3, 5, 6, 9)
- Motor Driver Module (L298N)
- 4 Wheels/Disks
- Power supply

## Pin Configuration
- Motor 1: Pin 3 (PWM)
- Motor 2: Pin 5 (PWM)
- Motor 3: Pin 6 (PWM)
- Motor 4: Pin 9 (PWM)

## Speed Control
- Range: 0-255
- 0 = Motor OFF
- 255 = Maximum speed

## Main Functions

### setAllMotorSpeeds(speed1, speed2, speed3, speed4)
Set all motors to specific speeds.
Example: `setAllMotorSpeeds(150, 150, 150, 150);`

### runAllMotors()
Apply current speed settings to all motors.

### stopAllMotors()
Stop all motors immediately.

### increaseSpeed(increment)
Increase speed by value.
Example: `increaseSpeed(20);`

### decreaseSpeed(decrement)
Decrease speed by value.
Example: `decreaseSpeed(20);`

## Wiring

Arduino Pin 3 → Motor Driver IN1 → Motor 1
Arduino Pin 5 → Motor Driver IN2 → Motor 2
Arduino Pin 6 → Motor Driver IN3 → Motor 3
Arduino Pin 9 → Motor Driver IN4 → Motor 4
GND → GND


## Usage Example
cpp
void setup() {
  // All motors to 150/255 speed
  setAllMotorSpeeds(150, 150, 150, 150);
}

void loop() {
  runAllMotors();
  delay(100);
}


## Speed Ramping Example
cpp
void loop() {
  // Increase speed from 0 to 255
  for (int speed = 0; speed <= 255; speed += 5) {
    setAllMotorSpeeds(speed, speed, speed, speed);
    delay(50);
  }
  delay(1000);
  
  // Decrease speed back to 0
  for (int speed = 255; speed >= 0; speed -= 5) {
    setAllMotorSpeeds(speed, speed, speed, speed);
    delay(50);
  }
  delay(1000);
}

