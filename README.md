# Best Construction Set Ever

## Prerequisites

1. [OpenSCAD](http://www.openscad.org/) - The Programmers Solid 3D CAD Modeller. 

## Installation

```
git clone https://github.com/shadowlamer/bcse.git
git submodule init
git submodule update
```

## Metal parts

### Blueprints building

#### Quick Start

```
openscad parts/metal/tiny.scad -o tiny.dxf 
```

Will produce something like this:

<img src="https://raw.githubusercontent.com/shadowlamer/bcse/master/docs/images/tiny.png" height="100"/>

#### Single part blueprints

##### Available parts

###### Panel

```
openscad parts/metal/part.scad -D 'part=["panel", [3,4]]' -o panel_3x4.dxf 
```
<img src="https://raw.githubusercontent.com/shadowlamer/bcse/master/docs/images/panel_3x4.png" height="100"/>

###### Wheel

```
openscad parts/metal/part.scad -D 'part=["wheel", [5]]' -o wheel_r5.dxf 
```
<img src="https://raw.githubusercontent.com/shadowlamer/bcse/master/docs/images/wheel_r5.png" height="100"/>

###### Angle

```
openscad parts/metal/part.scad -D 'part=["angle", [5]]' -o angle_5.dxf 
```
<img src="https://raw.githubusercontent.com/shadowlamer/bcse/master/docs/images/angle_5.png" height="100"/>

###### Angled panel

```
openscad parts/metal/part.scad -D 'part=["apanel", [5,5]]' -o apanel_5x5.dxf 
```
<img src="https://raw.githubusercontent.com/shadowlamer/bcse/master/docs/images/apanel_5x5.png" height="100"/>

###### PI-shaped panel

```
openscad parts/metal/part.scad -D 'part=["ppanel", [1,5]]' -o ppanel_1x5.dxf 
```
<img src="https://raw.githubusercontent.com/shadowlamer/bcse/master/docs/images/ppanel_1x5.png" height="100"/>

#### Sets creation



### More precise nesting

Use [Deepnwst.io](https://deepnest.io/). It works.
<img src="https://raw.githubusercontent.com/shadowlamer/bcse/master/docs/images/tiny-nested.png" height="100"/>


