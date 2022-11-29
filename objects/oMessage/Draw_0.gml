/// @description Insert description here
// You can write your code in this editor

var _x1 = x + w_max/2 - w/2 - margin;
var _x2 = x + w_max/2 + w/2 + margin;
var _y1 = y + h_max/2 - h/2 - margin;
var _y2 = y + h_max/2 + h/2 + margin;

var _x3 = x + w - sprite_width;
var _y3 = y + h - sprite_height;

draw_set_color(c_black);
draw_rectangle(_x1, _y1, _x2, _y2, false);

draw_set_color(c_white);
draw_rectangle(_x1, _y1, _x2, _y2, true);

if(w == w_max) {
	draw_set_font(fnJP);
	draw_text(x,y,text[page-1]);
	// nextボタン
	draw_sprite(sprite_index, image_index, _x3, _y3);
	// OK
	drawSetMid();
	draw_text(_x3+sprite_width/2, _y3+sprite_height/2, "OK");
	
	var _page = string_insert(page, string_insert(maxPage, "/", 2), 0);
	draw_text(x + w_max/2, y+h, _page);
	
	drawSetDefault();
}
