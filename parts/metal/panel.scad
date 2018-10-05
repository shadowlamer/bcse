$fn=50;

basis=10; //distance between holes
diam=4.5; //hole diameter
gap=0.01; //placement gap

module body(sizex, sizey) {
  difference() {  
      for (x = [0:sizex-1]) {
        translate([0,x*basis])
        for (y= [0:sizey-1]) {
          difference() {
            translate([y*basis,0]) square(basis, basis);
            translate([y*basis+basis/2,basis/2]) circle(d=diam);
          }
        };
    }
  }
}

module chamfer(type){
  rotate(90*type)
    difference() {  
      square(basis/2);
      translate([basis/2,basis/2]) circle(d=basis);  
    }
}

module roundedPanel(sizex, sizey) {
  difference() {  
    body(sizex,sizey);
    translate([0,0])                     chamfer(0);
    translate([basis*sizey,0])           chamfer(1);
    translate([basis*sizey,basis*sizex]) chamfer(2);
    translate([0,basis*sizex])           chamfer(3);      
  }
}

roundedPanel(sizex,sizey);
