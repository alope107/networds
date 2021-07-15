function get_partners(instances, max_dist){
	var partners = [];
	var total_dots = len(instances);
	for(var i = 0; i < total_dots; i++) {
		var partner = instances[i];
		// don't match with self
		if (partner.id == id) {
			continue
		}
		if (point_distance(x, y, partner.x, partner.y) <= max_dist) {
			append(partners, partner);
		}
	}
	return partners;
}