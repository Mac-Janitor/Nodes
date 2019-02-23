if (enabled == 0)
	enabled = 1;
else
	enabled = 0;
	
if (debug_mode)
{
	show_debug_message("XX Value: " + string(self.xx));
	show_debug_message("YY Value: " + string(self.yy));
}