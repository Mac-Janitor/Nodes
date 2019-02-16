var cellWidth = 64;
var cellHeight = 64;

var cellX = cellWidth;
var cellY = cellHeight;

var xx = 0;
var yy = 0;
	
while (cellY < (room_height - cellHeight))
{
	while (cellX < (room_width - cellWidth))
	{		
		with(objGrid)
		{
			grid[xx, yy] = instance_create_layer(cellX, cellY, "Instances", objCell);
		}
		cellX += cellWidth;		
		xx++;
	}
	cellX = cellWidth;
	cellY += cellHeight;
	xx = 0;
	yy++;	
}