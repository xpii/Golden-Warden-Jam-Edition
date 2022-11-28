/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_sprite_ext(sIconPerk, type, x, y, 2, 2, 0, -1, image_alpha);

if(isSelected) {
	drawSetMid();
	draw_set_font(fnJP);
	draw_text(room_width/2, TILESIZE, desc);
	draw_text(room_width/2, TILESIZE*2, price);
	drawSetDefault();
}