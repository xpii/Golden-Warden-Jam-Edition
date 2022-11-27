/// @description Insert description here
// You can write your code in this editor

var _y = y;
if(isSelected) _y = y-6;

draw_sprite_ext(sCard, image_index, x, _y, 1, 1, 0, -1, image_alpha);

drawSetMid();
draw_text(x,_y-12,option);
draw_sprite(sIconsSup, type, x, _y+8);

// 説明
if(isSelected) {
	draw_set_font(fnJP);
	draw_text(room_width/2 ,room_height-32,desc);
}

drawSetDefault();