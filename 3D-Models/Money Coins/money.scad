color("#634A3F")
linear_extrude(5)
circle(90);

translate([0, 0, 5]) {
    color("#B79A7C")
    linear_extrude(10)
    circle(90);

    translate([0, 0, 10])
    color("#634A3F")
    linear_extrude(5)
    difference() {
        circle(90);
        
        translate([0, 8])
        import("young_totoro.svg", center = true);
    }
}