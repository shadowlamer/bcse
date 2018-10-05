$fn=50;

basis=10; //distance between holes
diam=4.5; //hole diameter
gap=0.01; //placement gap

function units(n) = n*basis;

function halfUnit() = basis/2;

function defined(a) = str(a) != "undef";
