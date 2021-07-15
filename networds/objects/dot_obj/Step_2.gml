// checks whether self or any of the current partners wrapped on this step
var stale_partner = stale;
for (var i = 0; i < len(partners); i++) {
	var partner = partners[i];
	stale_partner |= partner.stale;
}

// if we're in the bucket for search this step, or if we need to
// do a refresh because of screen wrap
if(current >= search_cadence || stale_partner) {
	partners = get_partners(spawner_obj.active_instances, max_dist);
	
	if (current >= search_cadence) {
		current = 0;
	}
}