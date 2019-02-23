scrBuildGrid();

var levelList = scrProcessJson("level1.json", "nodes");

for (var i = 0; i < ds_list_size(levelList); i++)
{
	var node = ds_list_find_value(levelList, i);
	grid[node[? "xx"], node[? "yy"]] = scrSetNode(node);
}

/*
for (var xx = 0; xx < self.totalWidth; xx++)
{
	for (var yy = 0; yy < self.totalHeight; yy++)
	{
		if (object_get_name(grid[xx, yy]) == "objNode")
		{
			with (objNode)
			{
				if (
			}
		}
	}
}
*/
//var relationshipList = scrProcessJson("relationship1.json");