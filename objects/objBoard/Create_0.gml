/// @description Insert description here
// You can write your code in this editor
var board;

for (var i = 0; i < 8; i++)
{
	for (var j = 0; j < 4; j++)
	{
		board[i, j] = undefined;//scrSetNode(i, j);
	}
}

// Concatenate json file into string
var levelJson = file_text_open_read("level1.json");
var levelString = "";
while(!file_text_eof(levelJson))
{
	levelString += file_text_read_string(levelJson);
	file_text_readln(levelJson);
}
file_text_close(levelJson);

// Decode json string
var jsonMap = json_decode(levelString);
var levelList = ds_map_find_value(jsonMap, "default");
for (var i = 0; i < ds_list_size(levelList); i++)
{
	var node = ds_list_find_value(levelList, i);
	scrSetNode(node);
}
//scrSetNode();
//board[0, 0] = scrNewNode(0 , 0);