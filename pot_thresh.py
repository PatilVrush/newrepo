import cv2
import numpy as np

#cap = cv2.VideoCapture('/home/vrushali/Downloads/IMG_7026.MOV')
cap = cv2.VideoCapture(0)

while True:
	ret, frame = cap.read()
 	hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
	lower_red = np.array([0,150,0])
	upper_red = np.array([150,255,255])
	mask = cv2.inRange(hsv , lower_red , upper_red)
	res = cv2.bitwise_and(frame,frame,mask=mask)
	cv2.imshow('ORIGINAL' , frame)
	cv2.imshow('MASK' , mask)
	cv2.imshow('RESULT' , res)

	if cv2.waitKey(1) & 0xFF == ord('q'):
		break

cv2.waitKey(0)
cv2.destroyAllWindows()
cap.release()
