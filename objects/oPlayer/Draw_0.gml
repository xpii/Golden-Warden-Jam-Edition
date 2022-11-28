/// @description 

// スプライト変更
if(oGame.turn_statement == 1 && sprite_index != sPlayerSlash) {
	if(remain_move > 0) {
		if(alarm[1] > 0) sprite_index = sPlayerSword;
		else sprite_index = sPlayerWalk;
	}
	else if(weapon == 0) sprite_index = sPlayer;
	else if(weapon == WEP_SWORD || weapon == WEP_SCYTHE || weapon == WEP_DUALSWORD) sprite_index = sPlayerSword;
	else if(weapon == WEP_BOW || weapon == WEP_XBOW) sprite_index = sPlayerBow;
	else if(weapon == WEP_SHIELD) sprite_index = sPlayerShield;
}

draw_self();


if(remain_move > 0) {
	drawSetMid();
	draw_sprite(sIconsFont, 0, x-6, y-8*4);
	draw_text(x+6,y-8*4,remain_move);
}

draw_sprite(sIcons, weapon, x, y-8*6);
draw_sprite(sIcons, subWeapon, x, y-8*8);


// UI関連
drawSetMid();
draw_text(TILESIZE, 16, "HP:");

// hp
for(var _i=0; _i<hp; _i++) {
	draw_sprite(sIconsFont, 1, 1.6*TILESIZE + _i*12, 16);
}
for(var _i=0; _i<maxHp-hp; _i++) {
	draw_sprite(sIconsFont, 2, 1.6*TILESIZE + (_i+hp)*12, 16);
}

// coin
draw_sprite(sIconsFont, 3, 24, 32);
draw_text(24+16, 32, coin);


if(hp <= 0) {
	draw_text(8*TILESIZE, 4*TILESIZE, "Game Over");
	oGame.control = false;
}


