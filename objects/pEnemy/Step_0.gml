/// @description 

if(!instance_exists(follow)) instance_destroy();

else {
	x = follow.x;
	y = follow.y;
	image_alpha = follow.image_alpha;
	current_depth = follow.num;
}


// マウスカーソルが乗っている時
if(point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)) {
	// マウスカーソルが乗った瞬間のみの処理
	if(!isSelected) {
		isSelected = true;
		alarm[10] = 1;
	}
}

else {
	isSelected = false;
	with(oTile) if(drawBy == other) drawBy = self;
	desc = "";
}