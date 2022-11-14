/// @description 
draw_self();


draw_text(x,y-16*4,remain_move);
draw_text(x,y-16*6,weapon);
draw_text(x,y-16*8,subWeapon);


draw_text(x,y+48,current_depth);

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


