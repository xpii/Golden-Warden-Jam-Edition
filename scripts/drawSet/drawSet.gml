// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawSet(){
	var _valign = argument0;
	var _halign = argument1;
	var _font = argument2;
	var _color = argument3;
	
	if(argument_count > 0) draw_set_valign(_valign);
	if(argument_count > 1) draw_set_halign(_halign);
	if(argument_count > 2) draw_set_font(_font);
	if(argument_count > 3) draw_set_color(_color);
}

function drawSetDefault() {
	drawSet(fa_top, fa_left, fnEng, c_white);
}

function drawSetMid() {
	drawSet(fa_middle, fa_center);
}