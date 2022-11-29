/// @description 
drawSetMid();

if(follow.activate) {
	draw_sprite(sIconsFont, 1, x-6, y-8*4);	// ハート
	draw_text(x+6,y-8*4,hp);				// HP
	// draw_sprite(sIcons, weapon, x, y-8*6);	// ブキ
	
	sprite_index = sBox;
}

else sprite_index = sEnemyDark;

draw_self();

draw_set_font(fnJP);
draw_text(room_width/2 ,room_height-32,desc);

drawSetDefault();
