count = 2;
spacing = 17;
r = 0.8;

stl1 ="./mushroom.stl";
stl2 ="./mushroom-directional.stl";

union() {
    import(stl1);
    translate([0, spacing, 0]) import(stl2);
    // translate([-2, spacing * 2, 0]) import(stl3);

    translate([4.4, -spacing / 2 * 0.9, 0.9 * r])
    rotate ([270, 0, 0])
    cylinder(h = (count) * spacing - spacing * 0.1, r = r, $fn=15)
    ;
};
