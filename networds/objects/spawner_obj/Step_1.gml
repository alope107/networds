active_dots = [];
for(var i = 0; i < dot_count; i++) {
	var dot = instances[i];
	if (dot.active) {
		append(active_instances, dot);
	}
}