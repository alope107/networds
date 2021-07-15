function print(){
	var to_display = "";
	for (var i=0; i < argument_count; i++) {
		to_display += string(argument[i]);
		if (i < argument_count - 1) {
			to_display += " ";
		}
	}
	show_debug_message(to_display);
}