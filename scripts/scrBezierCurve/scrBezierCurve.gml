///Bezier_Point_Find(lerp, p0x, p0y, p1x, p1y, p2x, p2y, p3x, p3y)
/*
Lerp is a value from 0-1 to find on the line between p0 and p3
p1 and p2 are the control points

returns array (x,y)
*/
var t   = argument0;
var p0x = argument1;
var p0y = argument2;
var p1x = argument3;
var p1y = argument4;
var p2x = argument5;
var p2y = argument6;
var p3x = argument7;
var p3y = argument8;

//Precalculated power math
var tt  = t  * t;
var ttt = tt * t;
var u   = 1  - t; //Inverted
var uu  = u  * u;
var uuu = uu * u;

//Calculate the point
var px =     uuu * p0x; //first term
var py =     uuu * p0y;
px += 3 * uu * t * p1x; //second term
py += 3 * uu * t * p1y;
px += 3 * u * tt * p2x; //third term 
py += 3 * u * tt * p2y;
px +=        ttt * p3x; //fourth term
py +=        ttt * p3y;

//Pack into an array
var PA; PA[0] = px; PA[1] = py;
return PA;