/** 
 * TODO: Change to ds_map for back to increase performance
*/
function Set(_initial) constructor{
	_map = {};
	for (var i =0; i < array_length(_initial); i++) {
		variable_struct_set(_map, string(_initial[i]), _initial[i]);
	}
	
	add = function(_val) {
		variable_struct_set(_map, string(_val), _val);
	};
	
	contains = function(_val) {
		return variable_struct_exists(_map, string(_val));
	};
	
	remove = function(_val) {
		variable_struct_remove(_map, string(_val));
	};
	
	to_array = function() {	
		var new_arr = [];
		var names = variable_struct_get_names(_map);
		
		for (var i = 0; i < array_length(names); i++) {
			append(new_arr, variable_struct_get(_map, names[i]));
		}
		return new_arr;
	}
}