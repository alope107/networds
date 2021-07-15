/** 
 * @function Flatens array by one level
 * @param {array} arr
*/
function flatten(arr){
	var new_arr = [];
	for (var i = 0; i < len(arr); i++) {
		for(var j = 0; j < len(arr[i]); j++) {
			append(new_arr, arr[i][j]);
		}
	}
	return new_arr;
}

function append(arr, val) {
	arr[@ array_length(arr)] = val;
}

function unique(arr) {
	var set = new Set(arr);
	return set.to_array();
}

function sum(arr) {
	var total = 0;
	for(var i = 0; i < len(arr); i++) {
		total += arr[i];
	}
	return total;
}

function map(arr, f) {
	var new_arr = [];
	for (var i = 0; i < len(arr); i++) {
		new_arr[i] = f(arr[i]);
	}
	return new_arr;
}

function len(arr) {
	return array_length(arr);
}

function deep_array_copy(arr) {
	var new_arr = [];
	for (var i = 0; i < len(arr); i++) {
		if(is_array(arr[i])) {
			new_arr[i] = deep_array_copy(arr[i]);
		} else {
			new_arr[i] = arr[i];
		}
	}
	return new_arr;
}

function slice(arr, first, last) {
	var new_arr = [];
	for (var i = first; i < last; i++) {
		append(new_arr, arr[i]);
	}
	return new_arr;
}