from gpiozero import AngularServo
from time import sleep
import RPi.GPIO as GPIO
from btpycom import *


s1 = AngularServo(17, min_angle=-90, max_angle=90) #right?
s2 = AngularServo(27, min_angle=-90, max_angle=90) #left?

def Left_Motor_Forward():
	s2.angle = 90
	sleep(1)
def Left_Motor_Backward():
	s2.angle = -90
	sleep(500)
def Right_Motor_Forward():
	s1.angle = -90
	sleep(500)
def Right_Motor_Backward():
	s1.angle = 90
	sleep(500)

def Both_Forward():
	s1.angle = -90
	s2.angle = 90
	sleep(500)


# while True:
# 	#Right_Motor_Forward()
# 	#Right_Motor_Backward()
# 	#Left_Motor_Forward()
# 	#Left_Motor_Backward()
# 	Both_Forward()

def onStateChanged(state, msg):
	if state == "LISTENING":
		print("Waiting for connection")
		stop()
	elif state == "CONNECTED":
		print("Connection to ", msg, " made")
	elif state == "MESSAGE":
		print("GOT COMMAND: ", msg)
		if msg == "LEFT_FORWARD":
			Left_Motor_Forward()
		elif msg == "LEFT_BACKWARD":
			Left_Motor_Backward()
		elif msg == "RIGHT_FORWARD":
			Right_Motor_Forward()
		elif msg == "RIGHT_BACKWARDS":
			Right_Motor_Backward()
		
serviceName = "BTCar"
BTServer(serviceName, stateChanged = onStateChanged)