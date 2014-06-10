Assembly Project
===============

Pacman assembly project for school.


**TODO List:**
* ~~Finish pacman movement~~.
* ~~Implement psude-random number genrator~~.
* ~~Implement *AI* movement~~.
* ~~Create *End* game.~~
* Add Power-Up.
* Release AI's based on time.
* ~~Add main menu.~~


**_Done_**.


'''python
import rr
import math

#---Parameters: ------------------------------------------ 
CameraHeight = 60 # (inch) !!~~~~~!!!!!!!! CHANGE !!!!!!!!~~~~~!!
CameraPitchDeg = 0 # (deg) !!~~~~~!!!!!!!! CHANGE !!!!!!!!~~~~~!!
cameraFieldOfView = 47 #AXIS 206 (degrees)
VtargetRheight = 37.5 #(inch)
HtargetRheight = 68.0 #(inch)
VtargetWidth = 4.0 #(inch)
HtargetWidth = 23.5 #(inch)

#---Code: ------------------------------------------ 
imageHeight = rr.GetVariable("IMAGE_HEIGHT")
imageWidth = rr.GetVariable("IMAGE_WIDTH")
ntrgt = rr.GetVariable("BLOB_COUNT")
VerticalFOVDeg = math.atan((imageHeight/imageWidth)*math.tan(cameraFieldOfView*math.pi/360.0))*360.0/math.pi

def IsVertical(n):
	IsVertical = rr.GetArrayVariable("WIDTH")[n] < rr.GetArrayVariable("HEIGHT")[n]
	
def Angle(n):
	width = 0.0
	if IsVertical(n):
		width = VtargetWidth 
	else:
		width = HtargetWidth
		
	DisfromImgCenterPix = rr.GetArrayVariable("COG_X")[n]-imageWidth/2
	InchDivPix= width/(rr.GetArrayVariable("WIDTH")[n])
	DisfromImgCenterInch=DisfromImgCenterPix*InchDivPix
	Angle = math.atan(DisfromImgCenterInch/ (Distances[n] * 12))*(180/math.pi)

if ntrgt > 0:
	Distances = [0] * ntrgt
	Angles = [0] * ntrgt
	for i in range(ntrgt):
		Rheight = 0
		if IsVertical(i):
			Rheight = VtargetRheight
		else:
			Rheight = HtargetRheight
		y = rr.GetArrayVariable("COG_Y")[i]
		y = -((2 * (y /imageHeight)) - 1)
		rr.SetVariable("Debug", y)

		d = (Rheight-CameraHeight)/math.tan((y*VerticalFOVDeg/2.0 + CameraPitchDeg)*math.pi/180.0)
		Distances[i] = d / 12 # set distance in ft
		Angles[i] = Angle(i) 
	

	rr.SetArrayVariable("Distances", Distances)
	rr.SetArrayVariable("Angles", Angles)
'''
