/// @description Insert description here
// You can write your code in this editor

draw_self();

drawSetMid();
draw_text(x,y-12,option);
draw_sprite(sIconsSup, type, x, y+8);

// 説明
if(isSelected) {
	draw_set_font(fnJP);
	draw_text(room_width/2 ,room_height-32,desc);
}

drawSetDefault();