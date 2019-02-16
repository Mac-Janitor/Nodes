// Concatenate json file into string
var jsonFileName = argument0;

var jsonFile = file_text_open_read("level1.json");
var jsonString = "";
while(!file_text_eof(jsonFile))
{
	jsonString += file_text_read_string(jsonFile);
	file_text_readln(jsonFile);
}
file_text_close(jsonFile);

// Decode json string
var jsonMap = json_decode(jsonString);
var jsonList = ds_map_find_value(jsonMap, "default");

return jsonList;