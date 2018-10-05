include <panel.scad>;

function holeAvailable(rows,i,j) = (0==(((1/rows)*i*pow(2,(j+2-floor(j/(2.5-(j/10))))))%1));

module holeWheel(size) {
  rows = pow(2,size)*4; 
  angle = 360/rows;  
  for(i=[0:rows-1]) {  
    for (j=[1:size]) {  
      if (holeAvailable(rows,i,j)) {
      rotate(angle*i)
        translate([units(j),0])
          basicHole();
      }
    }
  }    
}

module roundPlot(size) {
    circle(units(size)+halfUnit());
}


module wheel(size) {
  if (size<=10) {
    difference() {
      roundPlot(size-1);  
      holeWheel(size-1);
      basicHole();  
    }    
  }
  else
      echo ("ERROR: Max wheel radius of 10 alowed.");
}
