// Concatenate json file into string
var jsonFileName = argument[0];
var jsonValueToFind = "default";

// argument1 is an optional argument that changes the map find value
if (argument_count > 1)
	jsonValueToFind = argument[1];

var jsonFile = file_text_open_read(jsonFileName);
var jsonString = "";
while(!file_text_eof(jsonFile))
{
	jsonString += file_text_read_string(jsonFile);
	file_text_readln(jsonFile);
}
file_text_close(jsonFile);

// Decode json string
var jsonMap = json_decode(jsonString);
var jsonList = ds_map_find_value(jsonMap, jsonValueToFind);

return jsonList;