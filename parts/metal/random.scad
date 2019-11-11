include <./layout.scad>

$fn = 50;
kinds=10;
maxnumber = 5;
maxsize = 8;
maxradius = 2;

parts=[
    "panel",
    "apanel",
    "ppanel",
    "angle",
    "wheel"
];

function rnd(m) = (
    ceil(rands(0,m,1)[0])
);

random_set = [
    for (a = rands(0, len(parts), 10)) 
        let (
            i = floor(a), 
            part = parts[i],
            param = 
                (part == "wheel") ? [rnd(maxradius) + 1] :
                (part == "angle") ? [rnd(maxsize)] : 
                [rnd(maxsize), rnd(maxsize)],
            num = rnd(maxnumber)
        ) 
        [[part, param], num]
];
    
set(random_set);
    
echo(random_set);