center_layer_height = 10;
outer_layer_height = 3;
circle_diameter = 90;
circle_resolution = 300;
outer_color = "#B79A7C";
inner_color = "#634A3F";

$fn = circle_resolution;

color(outer_color)
linear_extrude(outer_layer_height)
difference() {
    circle(circle_diameter);
    
    scale(2)
    mirror([1,0,0])
    import("one.svg", center = true);
}

translate([0, 0, outer_layer_height]) {
    color(inner_color)
    linear_extrude(center_layer_height)
    circle(circle_diameter);

    translate([0, 0, center_layer_height])
    color(outer_color)
    linear_extrude(outer_layer_height)
    difference() {
        circle(circle_diameter);
        
        translate([0, 8])
        import("young_totoro.svg", center = true);
    }
}

translate([200, 0, 0]) {
    color(outer_color)
    linear_extrude(outer_layer_height) {
        difference() {
            circle(circle_diameter);
            circle(circle_diameter - 10);
        }
        scale(2)
        mirror([1,0,0])
        import("one.svg", center = true);
    }

    translate([0, 0, outer_layer_height]) {
        color(inner_color)
        linear_extrude(center_layer_height)
        circle(circle_diameter);

        translate([0, 0, center_layer_height])
        color(outer_color)
        linear_extrude(outer_layer_height) {
            difference() {
                circle(circle_diameter);
                circle(circle_diameter - 10);
            }
        
            translate([0, 8])
            import("young_totoro.svg", center = true);
        }
    }
}