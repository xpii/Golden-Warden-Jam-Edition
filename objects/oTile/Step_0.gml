/// @description

// 描画関連
if(!instance_exists(drawBy)) drawBy = self;

if(drawBy == self) {
	if(num < oPlayer.current_depth - 3 || num > oPlayer.current_depth + oGame.view_range) {
		sprite_index = sTileDark;
		activate = false;
	}

	else {
		if(num == oPlayer.current_depth) sprite_index = sTileShadow;
		else sprite_index = sTile;
		
		activate = true;
	}
}


// x_gotoの位置に移動させる
var _diff = x_goto - x;
x += (_diff*0.7);
