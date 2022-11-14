/// @description restart

if(oPlayer.reroll > 0) {
	oPlayer.reroll--;
	with(oCard) alarm[0] = 1;
}
