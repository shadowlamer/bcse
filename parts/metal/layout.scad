include <../MCAD/meccano_compatibility.scad>;

$fn=50;

if (defined(panel))
  roundedPanel(panel[0],panel[1]);
else
if (defined(wheel))
  wheel(wheel);
