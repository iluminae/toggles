commonHeight=-2.5;
/*
// MINDTHIEF
Tokenize([0,0,5.5],[20,60,0]){
	rotate([180,0,180])
	import("mindthief.stl");
}
// SPELLWEAVER
Tokenize([0,0,5.5],[60,60,0]){
	rotate([180,0,180])
	import("sp.stl");
}
// BRUTE
Tokenize([0,0,5.5],[-60,60,0]){
	rotate([180,0,180])
	import("brute.stl");
}
// TINKERER
Tokenize([0,0,5.5],[-60,-60,0]){
	rotate([180,0,180])
	import("tink.stl");
}
// SCOUNDREL
Tokenize([0,0,5.5],[60,-60,0]){
	rotate([180,0,180])
	import("scoundrel.stl");
}
// CRAGHEART
Tokenize([0,0,5.5],[100,60,0]){
	rotate([180,0,180])
	import("ch.stl");
}
// SUN
Tokenize([126.3,-24.3,commonHeight],[20,20,0]) import("sun.stl");
// PLAUGE HERALD
Tokenize([58.3,-59.3,commonHeight],[-20,20,0]) import("ph.stl");
// SAWBONES
Tokenize([59.3,-23.3,commonHeight],[-20,-20,0]) import("saw.stl");
// THREE SPEARS
Tokenize([26.75,-22.65,commonHeight],[20,-20,0]) import("spears.stl");
// BEAST MASTER
Tokenize([125.375,-96.375,commonHeight],[60,-20,0]) import("twominis.stl");
// LIGHTNING BOLT
Tokenize([90.5,-95.91,commonHeight],[20,-60,0]) import("bolt.stl");
// SOOTHSINGER
Tokenize([91.45,-23.775,commonHeight],[60,20,0]) import("note.stl");
// SUMMONER
Tokenize([25.65,-58.6,commonHeight],[-60,20,0]) import("circles.stl");
// ECLIPSE
Tokenize([90.33,-59.73,commonHeight],[-60,-20,0]) import("eclipse.stl");
// ANGRY FACE
Tokenize([58.44,-95.45,commonHeight],[-20,-60,0]) import("angry.stl");
// TRIANGLES
Tokenize([125.15,-60.2,commonHeight],[-20,60,0]) import("triangles.stl");
*/
// REDGUARD
//Tokenize([-138.55,-89.07,4.4],[100,-20,0]) import("redguard.stl");
// DEMO
//Tokenize([-138.54,-118.76,4.4],[100,20,0])

	
			
//import("redguard.stl")
difference(){
	// base
	union(){
		cylinder(d=23.75,h=5,$fn=112);
		translate([0,0,4])
		difference(){
			cylinder(d=23.75,h=1.5,$fn=112);
			cylinder(d=22.75,h=1.6,$fn=112);
		}
	}

	// string hole
	translate([0,0,2.4])
	rotate([90,90,0])
	cylinder(d=4.1,h=50,center=true,$fn=20);
}
		

module Tokenize(location,newlocation){
	translate(newlocation)
	difference(){
		union(){
			// base
			cylinder(d=23.75,h=4.5,$fn=112);
			// actual token
			translate(location)
			resize([23.75,23.75,1])
			children();
		}
		// string hole
		translate([0,0,2.4])
		rotate([90,90,0])
		cylinder(d=4.1,h=50,center=true,$fn=20);
	}
}
