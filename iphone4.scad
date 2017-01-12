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
plateShiftY = -51;
plateShiftZ = 7;
platetopShiftX = 0;
platetopShiftY = -50;
platetopShiftZ = 33;


// to help the plate seed at the bottom of the track.
sPlateX = 125;
sPlateY = 10;
sPlateZ = 5;
sPlateXshift = 0;
sPlateYshift = 45;
sPlateZshift = 7;


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
railx = 15;
raily = 10;
railz = 60;
railxShift = -40;
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
rtxShift = -51;
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
		// Making our brick that we start off with.
		translate([icaseShiftX, icaseShiftY, icaseShiftZ])
		minkowski() {
  		cube([icaseX,icaseY,icaseZ], center=true);
    cylinder(r=2,h=2);
		}

		// Making the Iphone bed.
		translate([iphoneShiftX, iphoneShiftY, iphoneShiftZ])
		minkowski() {
    cube([iphoneX,iphoneY,iphoneZ], center = true);
    cylinder(r=2,h=2);
		}

		//Cutting the Plate grove.
		translate([plateShiftX,plateShiftY,plateShiftZ])
		cube([plateX,plateY,plateZ], center = true);

		//Cutting the Plate grove Seed.
		translate([sPlateXshift,sPlateYshift,sPlateZshift])
		cube([sPlateX,sPlateY,sPlateZ], center = true);

		// trimming plate surface. for the rail attach
		translate([platetopShiftX,platetopShiftY,platetopShiftZ])
    cube([iphoneX,iphoneY,iphoneZ], center = true);

		// cutting the screen hole.
		translate([screenShiftX,screenShiftY,screenShiftZ])
		minkowski() {
    cube([screenX,screenY,screenZ], center = true);
    cylinder(r=2,h=2);
		}

		// cutting the front camera hole.
		translate([fcShiftX,fcShiftY,fcShiftZ])
		minkowski() {
    cube([fcX,fcY,fcZ], center = true);
    cylinder(r=2,h=2);
		}

		// cutting the front button hole.
		translate([fbShiftX,fbShiftY,fbShiftZ])
		minkowski() {
    cube([fbX,fbY,fbZ], center = true);
    cylinder(r=2,h=2);
		}

		// cutting the power button hole.
		translate([pbShiftX,pbShiftY,pbShiftZ])
		minkowski() {
    cube([pbX,pbY,pbZ], center = true);
  		sphere(2);
		}

		// cutting the power button hole.
		translate([hjShiftX,hjShiftY,hjShiftZ])
		minkowski() {
    cube([hjX,hjY,hjZ], center = true);
  		sphere(2);
		}

		// cutting the speaker hole.
		translate([sShiftX,sShiftY,sShiftZ])
		minkowski() {
    cube([sX,sY,sZ], center = true);
  		sphere(2);
		}

		// cutting the volume hole.
		translate([vShiftX,vShiftY,vShiftZ])
		minkowski() {
    cube([vX,vY,vZ], center = true);
  		sphere(2);
		}


		/////////////////////////////////////////////
		//// Rail System Code Passed this Point. ////
		/////////////////////////////////////////////
		translate([gRailx, gRaily, gRailz])
		union()
		{
			// This the rail button spring box.
			translate([bspringXShift, bspringYShift, bspringZShift])
  			cube([bspringX,bspringY,bspringZ], center=true);

			// This is the rail first Pass.
			translate([railxShift, railyShift, railzShift])
  			cube([railx,raily,railz], center=true);

			// Left Triangle
			translate([ltxShift,ltyShift,ltzShift])
			rotate(a=[0,180,45])
			linear_extrude(height = lth, center = true, convexity = 10, twist = 0)
			polygon(points=[[0,0],[ltp,0],[0,ltp]], paths=[[0,1,2]]);

			// Right Triangle
			translate([rtxShift,rtyShift,rtzShift])
			rotate(a=[0,180,225])
			linear_extrude(height = rth, center = true, convexity = 10, twist = 0)
			polygon(points=[[0,0],[rtp,0],[0,rtp]], paths=[[0,1,2]]);

			// path for rail button.
			translate([prbxShift, prbyShift, prbzShift])
	    cube([prbx,prby,prbz], center = true);

			// Negative space for our hand.
			translate([nbsxShift, nbsyShift, nbszShift])
			minkowski() {
			cube([nbsx,nbsy,nbsz], center = true);
			cylinder(r=2,h=2);
		}
		}
	}
}