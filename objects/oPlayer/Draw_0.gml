/// @description 
draw_self();


draw_text(x,y-8*4,remain_move);

draw_sprite(sIcons, weapon, x, y-8*6);
draw_sprite(sIcons, subWeapon, x, y-8*8);


draw_text(x,y+24,current_depth);

draw_text(TILESIZE, TILESIZE, "HP:");

for(var _i=0; _i<hp; _i++) {
	draw_text(2*TILESIZE+ _i*8, TILESIZE, "* ");
}

draw_text(TILESIZE, 2*TILESIZE, "Reroll:");
draw_text(2*TILESIZE, 2*TILESIZE, reroll);
draw_text(TILESIZE, 3*TILESIZE, "Coin:");
draw_text(2*TILESIZE, 3*TILESIZE, coin);


if(hp <= 0) {
	draw_text(8*TILESIZE, 4*TILESIZE, "Game Over");
	oGame.control = false;
}


