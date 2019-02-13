// void scrNewNode(xx, yy)
xx = argument0;
yy = argument1;

node = instance_create_layer(50 + 100*xx, 50 + 100*yy, "Instances", objNode);

node.xx = xx;
node.yy = yy;