show = 0;

module base() {
    translate([0, 0, 40])
    rotate([180, 0, 0])
    union() {
        difference() {
            polyhedron(points = [
                [0, -40, 0],
                [290, -40, 0],
                [0, 0, 45],
                [290, 0, 45],
                [0, 200, 45],
                [290, 200, 45],
                [0, 200, 0],
                [290, 200, 0]
            ], faces = [
                [0, 2, 3, 1],
                [2, 4, 5, 3],
                [7, 5, 4, 6],
                [1, 7, 6, 0],
                [6, 4, 2, 0],
                [1, 3, 5, 7]
            ]);
            
            polyhedron(points = [
                [2, -38, 0],
                [288, -38, 0],
                [2, 0, 43],
                [288, 0, 43],
                [2, 198, 43],
                [288, 198, 43],
                [2, 198, 0],
                [288, 198, 0]
            ], faces = [
                [0, 2, 3, 1],
                [2, 4, 5, 3],
                [7, 5, 4, 6],
                [1, 7, 6, 0],
                [6, 4, 2, 0],
                [1, 3, 5, 7]
            ]);
            
            translate([80, 80, 0])
            cylinder(d = 14, h = 45, $fn = 200);
            
            translate([60, 38, 0])
            cylinder(d = 4.5, h = 45, $fn = 200);
            
            translate([100, 38, 0])
            cylinder(d = 4.5, h = 45, $fn = 200);
            
            translate([60, 122, 0])
            cylinder(d = 4.5, h = 45, $fn = 200);
            
            translate([100, 122, 0])
            cylinder(d = 4.5, h = 45, $fn = 200);
            
            translate([180, 61.75, 0])
            cylinder(d = 30.5, h = 45, $fn = 200);
            
            translate([180, 98.25, 0])
            cylinder(d = 30.5, h = 45, $fn = 200);
            
            translate([211.5, 80, 0])
            cylinder(d = 30.5, h = 45, $fn = 200);
            
            translate([211.5, 116.5, 0])
            cylinder(d = 30.5, h = 45, $fn = 200);
            
            translate([248, 80, 0])
            cylinder(d = 30.5, h = 45, $fn = 200);
            
            translate([248, 116.5, 0])
            cylinder(d = 30.5, h = 45, $fn = 200);
            
            translate([126.75, 166.5, 0])
            cylinder(d = 30.5, h = 45, $fn = 200);
            
            translate([163.25, 166.5, 0])
            cylinder(d = 30.5, h = 45, $fn = 200);
            
            translate([40, 175, 0])
            cylinder(d = 6, h = 45, $fn = 200);
            
            translate([214, 200, 30])
            rotate([90, 0, 0])
            translate([3.25, 0, 0])
            hull() {
                cylinder(h = 5, d = 6.5, $fn = 200);
                
                translate([4.5, 0, 0])
                cylinder(h = 5, d = 6.5, $fn = 200);
            }
        }
        
        translate([230, 180, 10])
        cylinder(h = 30, d = 8, $fn = 8);
        
        translate([235, 167, 10])
        cylinder(h = 30, d = 8, $fn = 8);
        
        translate([212, 180, 10])
        cylinder(h = 30, d = 8, $fn = 8);
        
        translate([204, 168, 10])
        cylinder(h = 30, d = 8, $fn = 8);
        
        translate([2, 189, 6])
        difference() {
            cube([9, 9, 39]);
            
            translate([4.5, 4.5, 0])
            cylinder(h = 11, d = 4.1, $fn = 200);
        }
        
        translate([279, 189, 6])
        difference() {
            cube([9, 9, 39]);
            
            translate([4.5, 4.5, 0])
            cylinder(h = 11, d = 4.1, $fn = 200);
        }
        
        translate([2, 0, 6])
        difference() {
            cube([9, 9, 39]);
            
            translate([4.5, 4.5, 0])
            cylinder(h = 11, d = 4.1, $fn = 200);
        }
        
        translate([279, 0, 6])
        difference() {
            cube([9, 9, 39]);
            
            translate([4.5, 4.5, 0])
            cylinder(h = 11, d = 4.1, $fn = 200);
        }
    }
}

module cover() {
    translate([-300, 0, 0])
    difference() {
        union() {
            cube([286, 235, 2]);
            
            translate([0, 35, 0])
            cube([11, 13, 6]);
            
            translate([275, 35, 0])
            cube([11, 13, 6]);
            
            translate([0, 224, 0])
            cube([11, 11, 6]);
            
            translate([275, 224, 0])
            cube([11, 11, 6]);
        }
        
        translate([0, 37, 0])
        cube([9, 9, 4]);
        
        translate([4.5, 41.5, 0])
        cylinder(h = 6, d = 4.1, $fn = 200);
        
        translate([277, 37, 0])
        cube([9, 9, 4]);
        
        translate([281.5, 41.5, 0])
        cylinder(h = 6, d = 4.1, $fn = 200);
        
        translate([0, 226, 0])
        cube([9, 9, 4]);
        
        translate([4.5, 230.5, 0])
        cylinder(h = 6, d = 4.1, $fn = 200);
        
        translate([277, 226, 0])
        cube([9, 9, 4]);
        
        translate([281.5, 230.5, 0])
        cylinder(h = 6, d = 4.1, $fn = 200);
    }
}

if (show == 0) {
    base();
} else if (show == 1) {
    cover();
} else if (show == 2) {
    base();
    cover();
}