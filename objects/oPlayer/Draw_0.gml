/// @description 

// スプライト変更
if(oGame.turn_statement == 1) {
	if(remain_move > 0) sprite_index = sPlayerWalk;
	
	else if(weapon == 0) sprite_index = sPlayer;
	else if(weapon == WEP_SWORD || weapon == WEP_SCYTHE || weapon == WEP_DUALSWORD) sprite_index = sPlayerSword;
	else if(weapon == WEP_BOW || weapon == WEP_XBOW) sprite_index = sPlayerBow;
	else if(weapon == WEP_SHIELD) sprite_index = sPlayerShield;
}

draw_self();


if(remain_move > 0) draw_text(x,y-8*4,remain_move);

draw_sprite(sIcons, weapon, x, y-8*6);
draw_sprite(sIcons, subWeapon, x, y-8*8);


// draw_text(x,y+24,current_depth);

draw_text(TILESIZE, TILESIZE, "HP:");

for(var _i=0; _i<hp; _i++) {
	draw_text(2*TILESIZE+ _i*8, TILESIZE, "* ");
}

draw_text(TILESIZE, 2*TILESIZE, "Atk:");
draw_text(3*TILESIZE, 2*TILESIZE, atk);
draw_text(TILESIZE, 3*TILESIZE, "Coin:");
draw_text(3*TILESIZE, 3*TILESIZE, coin);


if(hp <= 0) {
	draw_text(8*TILESIZE, 4*TILESIZE, "Game Over");
	oGame.control = false;
}


