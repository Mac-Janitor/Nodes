var node = argument0;

// TODO: Add way to determine if node has aleady been added
var cell = objGrid.grid[node[? "xx"], node[? "yy"]];

with(instance_create_layer(cell.x, cell.y, "Instances", objNode))
{
	self.xx = node[? "xx"];
	self.yy = node[? "yy"];
	
}