/// @description 
drawSetMid();

if(follow.activate) {
	draw_sprite(sIconsFont, 1, x-6, y-8*4);	// ハート
	draw_text(x+6,y-8*4,hp);				// HP
	draw_sprite(sIcons, weapon, x, y-8*6);	// ブキ
	
	// スプライト
	if(weapon == 0) sprite_index = sEnemy;
	else if(weapon == WEP_SWORD || weapon == WEP_SCYTHE || weapon == WEP_DUALSWORD) sprite_index = sEnemySword;
	else if(weapon == WEP_BOW || weapon == WEP_XBOW) sprite_index = sEnemyBow;
	else if(weapon == WEP_SHIELD) sprite_index = sEnemyShield;
}

else sprite_index = sEnemyDark;

draw_self();

draw_set_font(fnJP);
draw_text(room_width/2 ,room_height-32,desc);

drawSetDefault();
