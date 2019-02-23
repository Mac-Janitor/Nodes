var node = argument0;

// TODO: Add way to determine if node has aleady been added
var cell = objGrid.grid[node[? "xx"], node[? "yy"]];

var inst = instance_create_layer(cell.x, cell.y, "Instances", objNode);

with(inst)
{
	self.xx = node[? "xx"];
	self.yy = node[? "yy"];
	
	self.nodeId = self.xx + (self.yy * array_height_2d(objGrid.grid));
	
	//show_debug_message(self.nodeId);
	
	var relationships = node[? "relationships"];
	
	if (relationships != undefined)
	{
		for (var i = 0; i < ds_list_size(relationships); i++)
		{
			var relationship = ds_list_find_value(relationships, i);
			self.relationships[i] = relationship[? "nodeId"];
			show_debug_message(self.relationships[i]);
		}
	}
}

return inst;