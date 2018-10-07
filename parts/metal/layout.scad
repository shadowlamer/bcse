include <../MCAD/meccano_compatibility.scad>;

$fn=50;

function defined(a) = str(a) != "undef";

if (defined(panel))
  rounded_panel(panel[0],panel[1]);
else
if (defined(wheel))
  wheel(wheel);
