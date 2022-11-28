/// @description Insert description here
// You can write your code in this editor


var _y = y;
if(isSelected && oPlayer.coin >= price) _y = y-6;

draw_sprite_ext(sprite_index, image_index, x, _y, image_xscale, image_yscale, 0, -1, image_alpha);
draw_sprite_ext(sIconPerk, type, x, _y, 2, 2, 0, -1, image_alpha);

if(isSelected) {
	drawSetMid();
	draw_set_font(fnJP);
	draw_text(room_width/2, TILESIZE, desc);
	// coin
	draw_sprite(sIconsFont, 3, room_width/2-8, TILESIZE*2);
	
	if(oPlayer.coin >= price) draw_set_color(c_white);
	else draw_set_color(c_red);
	
	draw_text(room_width/2+8, TILESIZE*2, price);
	drawSetDefault();
}