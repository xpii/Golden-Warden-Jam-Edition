/// @description

if(num < oPlayer.current_depth - 3 || num > oPlayer.current_depth + oGame.view_range) {
	image_alpha = 0.2;
	activate = false;
}

else {
	image_alpha = 1;
	activate = true;
}

