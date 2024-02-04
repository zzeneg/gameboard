spacing = 18;
r = 0.8;

// add all STLs
stls = [ "/mushroom-directional-mx.stl", "./mushroom-directional-ks.stl" ];

union() {
  count = len(stls);

  for (i = [0:count - 1]) {
    translate([ 0, i * spacing, 0 ]) import(stls[i]);
  }

  translate([ 4.4, -spacing / 2 * 0.9, 0.9 * r ]) rotate([ 270, 0, 0 ])
      cylinder(h = (count)*spacing - spacing * 0.1, r = r, $fn = 15);
};