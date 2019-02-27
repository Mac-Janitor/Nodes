/// @description Insert description here
// You can write your code in this editor

var SEGMENT_COUNT = 40;

var lineStart = scrBezierCurve(0, 200, 200, 400, 100, 600, 300, 800, 200);
var t;
var lineEnd;

for(var i = 1; i <= SEGMENT_COUNT; i++)
{
  t = i / SEGMENT_COUNT;
  lineEnd = scrBezierCurve(t, 200, 200, 400, 100, 600, 300, 800, 200);
  draw_line_width(lineStart[0], lineStart[1], lineEnd[0], lineEnd[1], 10);
  lineStart = lineEnd;
}

//draw_set_colour(c_lime);
//draw_line(50,50,150,50);