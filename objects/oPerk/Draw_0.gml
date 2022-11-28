/// @description Insert description here
// You can write your code in this editor

draw_self();

if(isSelected) {
	drawSetMid();
	draw_set_font(fnJP);
	draw_text(room_width/2, TILESIZE, desc);
	draw_text(room_width/2, TILESIZE*2, price);
	drawSetDefault();
}


