include <../MCAD/meccano_compatibility.scad>;

gap = 2;

function get_width(part, param) = (
    part == "wheel" ? param[0] * 2 - 0.5 :
    part == "angle" ? param[0] :
    param[0]
);

function get_height(part, param) = (
    part == "wheel" ? param[0] * 2 - 0.5 :
    part == "angle" ? 2 :
    param[1]
);

function x(items, i) = (
    let (
        item = items[i-1],
        part = item[0],
        param = item[1],
        width =  get_width(part, param),
        height = get_height(part, param) 
    )
    i == 0 ? 0 : mec_units(width) + x(items, i-1) + gap
);

function y(items, i) = (
    let (
        it = items[i-1],
        item = it[0], 
        part = item[0],
        param = item[1],
        width =  get_width(part, param),
        height = get_height(part, param) 
    )
    i == 0 ? 0 : mec_units(height) + y(items, i-1) + gap
);

module single_part(item) {
       part = item[0];
       param = item[1]; 
       if ( part == "panel") {
           mec_rounded_panel(param[0], param[1]);
       } else if ( part == "apanel") {
           mec_angled_panel(param[0], param[1], 0);
       } else if ( part == "ppanel") {
           mec_angled_panel(param[0], param[1], 1);
       } else if ( part == "wheel") {
           translate([mec_units(param[0]),mec_units(param[0])]) {
            mec_wheel(param[0]);
           }
       } else if ( part == "angle") {
            mec_angle(param[0]);
       } 
}

module grid(items)
{
    for (i = [0 : len(items)-1]) {
       item = items[i];
       translate ([0, x(items, i)]) {
          single_part(item); 
       }
    }
}

function multiply(item, num) = (
    num == 0 ? [] : concat([item], multiply(item, num-1))
);

module set(items) {
    for (i = [0 : len(items)-1]) {
        item = items[i];
        translate([y(items, i), 0]) {
            grid(multiply(item[0], item[1]));
        }
    }
}
