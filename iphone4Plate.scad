$fn=20;
//iphone4 case
icase();

// can't be larger than 152.4mm
icaseX = 133;
icaseY = 90;
icaseZ = 20;
icaseShiftX = 0;
icaseShiftY = 6;
icaseShiftZ = 0;

// the Z is heighter on purpose.
// Play with ShiftZ, not Z.
iphoneX = 120;
iphoneY = 64;
iphoneZ = 50;
iphoneShiftX = 0;
iphoneShiftY = 14;
iphoneShiftZ = 17;

// the plate track cut.
plateX = 125;
plateY = 200;
plateZ = 2;
plateShiftX = 0;
plateShiftY = -50;
plateShiftZ = 7;
platetopShiftX = 0;
platetopShiftY = -50;
platetopShiftZ = 33;

// the Screen Hole.
// The X and Y are actually backwards.
screenX = 80;
screenY = 55;
screenZ = 152;
screenShiftX = 0;
screenShiftY = 14;
screenShiftZ = -5;

// the front camera Hole.
// The X and Y are actually backwards.
fcX = 20;
fcY = 25;
fcZ = 152;
fcShiftX = -45;
fcShiftY = 14;
fcShiftZ = -5;

// the front button Hole.
// The X and Y are actually backwards.
fbX = 20;
fbY = 25;
fbZ = 152;
fbShiftX = 45;
fbShiftY = 14;
fbShiftZ = -5;

// Power button
// The X and Y are actually backwards.
pbX = 30;
pbY = 15;
pbZ = 6;
pbShiftX = -65;
pbShiftY = -4;
pbShiftZ = 0;

// Headphone Jack
// The X and Y are actually backwards.
hjX = 30;
hjY = 15;
hjZ = 6;
hjShiftX = -65;
hjShiftY = 34;
hjShiftZ = 0;

// Speaker Hole with usb Iphone cable
// The X and Y are actually backwards.
sX = 30;
sY = 48;
sZ = 6;
sShiftX = 65;
sShiftY = 14;
sShiftZ = 0;

// Volume Controls
// The X and Y are actually backwards.
vX = 35;
vY = 30;
vZ = 6;
vShiftX = -35;
vShiftY = 50;
vShiftZ = 0;

//////////////////////////////////////////////////
//// Rail System Variables Passed this Point. ////
//////////////////////////////////////////////////

gRailx = 0;
gRaily = 13;
gRailz = 0;

// This is a spring hole for the rail button.
bspringX = 35;
bspringY = 10;
bspringZ = 15;
bspringXShift = 40;
bspringYShift = -44;
bspringZShift = 2;

// Rail first pass.
railx = 17;
raily = 10;
railz = 60;
railxShift = -41;
railyShift = -49;
railzShift = 0;

// Rail second pass, one triangle.
ltp = 5;
lth = 40;
ltxShift = -29;
ltyShift = -48;
ltzShift = 0;

// Rail third pass, second triangle.
rtp = 5;
rth = 40;
rtxShift = -53;
rtyShift = -48;
rtzShift = 0;

// path for rail button
prbx = 100;
prby = 10;
prbz = 15;
prbxShift = -5;
prbyShift = -44;
prbzShift = 10;

// Negative space for your finger to push the button.
nbsx = 40;
nbsy = 20;
nbsz = 60;
nbsxShift = -3;
nbsyShift = -50;
nbszShift = 0;

module icase()
{
// This is where you Copy and Paste if you need to see invisible space.


	difference()
	{
		//Cutting the Plate grove.
		translate([plateShiftX,5,plateShiftZ])
		cube([(plateX-1),(icaseY-1),plateZ], center = true);

		// cutting the rail hole.
		translate([-41,-41,0])
		minkowski() {
    cube([20,20,100], center = true);
    cylinder(r=2,h=2);
		}

		// cutting the camera hole.
		translate([-47,-2,0])
		minkowski() {
    cube([15,20,100], center = true);
    cylinder(r=2,h=2);
		}

		// Plates Screw grove.
		translate([-3, -30, nbszShift])
		minkowski() {
		cube([38,2,100], center = true);
		cylinder(r=2,h=2);
		}
	}
}