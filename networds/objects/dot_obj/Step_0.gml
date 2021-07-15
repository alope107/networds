if(current >= search_cadence) {
	active = false;
	for(var i = 0; i < len(to_collide); i++) {
		var obj = to_collide[i];
		if(place_meeting(x, y, obj)) {
			active = true;
			break;
		}
	}
}

if(x <= 0 || x >= room_width || y <= 0 || y >= room_width) {
	stale = true;
	move_wrap(true, true, radius);
}