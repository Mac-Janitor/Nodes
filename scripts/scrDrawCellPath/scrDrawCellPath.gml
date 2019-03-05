var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var width = argument4;

if (shader_is_compiled(shdHorizontalLine))
{
	shader_set(shdHorizontalLine);
	draw_line_width(x1, y1, x2, y2, width);
	shader_reset();
}