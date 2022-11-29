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


// マウスカーソルが乗っている時
if(oGame.control && activate && point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)) {
	// マウスカーソルが乗った瞬間のみの処理
	if(!isSelected) {
		isSelected = true;
		alarm[10] = 1;
	}
}

else {
	isSelected = false;
	desc = "";
}