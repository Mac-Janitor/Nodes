var node = argument0;

// TODO: Add way to determine if node has aleady been added
var cell = objGrid.grid[node[? "xx"], node[? "yy"]];

instance_create_layer(cell.x, cell.y, "Instances", objNode);