scrBuildGrid();

var levelList = scrProcessJson("level1.json", "nodes");

for (var i = 0; i < ds_list_size(levelList); i++)
{
	var node = ds_list_find_value(levelList, i);
	grid[node[? "xx"], node[? "yy"]] = scrSetNode(node);
}

