if (enabled == 0)
	enabled = 1;
else
	enabled = 0;
	
if (debug_mode)
{
	show_debug_message("XX Value: " + string(self.xx));
	show_debug_message("YY Value: " + string(self.yy));
}

if (self.relationships != undefined)
{
	for (var i = 0; i < array_length_1d(self.relationships); i++)
	{
		var nodeToEnable = self.relationships[i];
	
		with (objNode)
		{
			if (self.nodeId == nodeToEnable)
			{
				self.enabled = 1;
			}
		}
	}
}