center_layer_height = 10;
outer_layer_height = 3;
circle_diameter = 90;
circle_resolution = 300;

$fn = circle_resolution;

color("#634A3F")
linear_extrude(outer_layer_height)
difference() {
    circle(circle_diameter);
    
    scale(2)
    mirror([1,0,0])
    import("one.svg", center = true);
}

translate([0, 0, outer_layer_height]) {
    color("#B79A7C")
    linear_extrude(center_layer_height)
    circle(circle_diameter);

    translate([0, 0, center_layer_height])
    color("#634A3F")
    linear_extrude(outer_layer_height)
    difference() {
        circle(circle_diameter);
        
        translate([0, 8])
        import("young_totoro.svg", center = true);
    }
}
