#!/usr/bin/python
"""
Created on Sept 7, 2015
@author: dashesy
Purpose: Access AVFoundation as a Cython class
"""

import pyavfcam

# Open the default video source
video = pyavfcam.AVFCam()
video.record('test.avi', duration=10)

print "Saved test.avi (Size: " + str(video.width) + " x " + str(video.height) + ")"
