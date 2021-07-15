dot_count = 500;
instances = [];
active_instances = [];
for(var i=0; i < dot_count; i++) {
	var new_inst = instance_create_layer(random_range(0, room_width),
										 random_range(0, room_height),
										 layer,
										 dot_obj);
	append(instances, new_inst);
}