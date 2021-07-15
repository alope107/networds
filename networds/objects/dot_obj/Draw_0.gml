var col = c_black;

if (active) {
	col = c_red;
}
draw_circle_color(x, y, radius, col, col, false);

if(active) {
	for (var i = 0; i < len(partners); i++) {
		var partner = partners[i];
		// only have one of the partners draw the line
		if(id < partner.id) {
			draw_line_width_color(x, y, partner.x, partner.y, radius, c_black, c_black);
		}
	}
}