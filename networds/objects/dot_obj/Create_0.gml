radius = 3;
search_cadence = 10;
max_dist = 100;
to_collide = [donut_obj];

active = false;
partners = [];
stale = false;
current = irandom_range(0,search_cadence);

speed = random_range(.1, 5.0);
direction = random_range(0, 360);
