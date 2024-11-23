x = x - 1

if x <= -100
{
	instance_destroy()
instance_create_layer(x+3500, y, "Instances_bottom", obj_clouders)
}