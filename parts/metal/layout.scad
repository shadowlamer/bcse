include <panel.scad>;
include <wheel.scad>;

if (defined(panel))
  roundedPanel(panel[0],panel[1]);
else
if (defined(wheel))
  wheel(wheel);