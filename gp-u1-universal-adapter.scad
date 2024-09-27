use <threadlib/threadlib.scad>
use <GoProScad/GoPro.scad>

include <JointSCAD/JointSCAD.scad>

difference() {
    union() {
        translate([0, 0, 0.5]) gopro_mount_m(
            base_height = 6, 
            base_width = 17, 
            leg_height = 17,
            center = true);

        minkowski() {
            translate([-8.5, -8.5, 0.5]) cube([17, 17, 6]);
            sphere(0.5);
        }
        
        translate([0, 0, 1]) cylinder(9, 3.5, 3.5, $fn=120);
    }
    
    union() {
        translate([0, 0, 6]) cylinder(1.75, 2.05, 0, $fn=120);
        rotate([180, 0, 0]) translate([0, 0, -6]) cylinder(7.1, 2.05, 2.05, $fn=120);
        rotate([180, 0, 0]) translate([0, 0, -4]) cylinder(5.1, 2.2, 2.2, $fn=120);
        rotate([180, 0, 0]) translate([0, 0, -1.5]) cylinder(1.6, 2.4, 2.4, $fn=120);
        translate([0, 0, -0.2]) cylinder(3, 2.7, 0, $fn=120);
        
        for (i = [0:1]) {
            rotate([0, 0, 180 * i]) rotate([180, 0, 0]) translate([5.97, 0, -5.35]) cylinder(6, 0.75, 0.75, $fn=120);
        };
    }
}