import numpy
import math

f=open("Hw3Bonus.kml", "w")

f.write('<?xml version="1.0" encoding="UTF-8"?><kml xmlns="http://earth.google.com/kml/2.0"><Document><Style id="z1"><IconStyle><Icon><href>http://www.google.com/intl/en_us/mapfiles/ms/micons/blue- dot.png</href></Icon></IconStyle></Style><Placemark><name>OHE136</name> <styleUrl>#z1</styleUrl><Point><coordinates>-118.289685,34.020559</coordinates></Point> </Placemark><Placemark> <name>Epicycloid</name> <LinearRing> <coordinates>'+ '\n')

a=7.0
b=3
cos=math.cos
sin=math.sin
pi=math.pi
nRev=7
oheLong=-118.289685
oheLat=34.020559

for t in numpy.linspace(0.0, pi*nRev, pi*nRev/0.01):
	x=oheLat+((a+b)*cos(t) - b*cos((a/b+1)*t))/1342
	y=oheLong+((a+b)*sin(t) - b*sin((a/b+1)*t))/1342
	z = str(y)+","+str(x)+"\n"
	f.write(z)

f.write('</coordinates> </LinearRing> </Placemark> </Document></kml>')

f.close()
