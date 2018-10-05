include <tools.scad>;

module basicHole() {
  circle(d=diam);
}

module holeGrid(sizex, sizey) {
  for (x = [0:sizex-1]) {
    translate([0,units(x)])
      for (y=[0:sizey-1]) {
        translate([y*basis+halfUnit(),halfUnit()]) basicHole();
      }
  }
}

module squarePlot(sizex, sizey) {
  square([units(sizey), units(sizex)]);    
}

module basicPanel(sizex, sizey) {
  difference() {  
     squarePlot(sizex,sizey);
     holeGrid(sizex,sizey); 
  }
}

module chamfer(type){
  rotate(90*type)
    difference() {  
      square(halfUnit());
      translate([halfUnit(),halfUnit()]) circle(d=basis);  
    }
}

module roundedPanel(sizex, sizey) {
  difference() {
    basicPanel(sizex,sizey);
    translate([0,0])                       chamfer(0);
    translate([units(sizey),0])            chamfer(1);
    translate([units(sizey),units(sizex)]) chamfer(2);
    translate([0,units(sizex)])            chamfer(3);      
  }
}
