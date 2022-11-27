/// @description

if(!instance_exists(drawBy)) drawBy = self;

if(drawBy == self) {
	if(num < oPlayer.current_depth - 3 || num > oPlayer.current_depth + oGame.view_range) {
		sprite_index = sTileDark;
		activate = false;
	}

	else {
		sprite_index = sTile;
		activate = true;
	}
}