scrBuildGrid();

var levelList = scrProcessJson("level1.json");

for (var i = 0; i < ds_list_size(levelList); i++)
{
	var node = ds_list_find_value(levelList, i);
	scrSetNode(node);
}