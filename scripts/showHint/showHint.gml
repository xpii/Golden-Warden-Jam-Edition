// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function showHint(){
	var _type = argument0;
	
	if(instance_exists(oHint)) {
		with(oHint) {
			if(type == _type && !enable) {
				with(oHint) {
					if(enable) instance_destroy();	
				}
				enable = true;
				alarm[0] = 600;
			}
		}
	}
}