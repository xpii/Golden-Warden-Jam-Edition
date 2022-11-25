/// @description 

// マウスカーソルが乗っている時
if(oGame.control && point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)) {
	// マウスカーソルが乗った瞬間のみの処理
	if(!isSelected) {
		isSelected = true;
	}
	
	// クリック時
	if(mouse_check_button_pressed(mb_left)) {
		if(type == REROLL) with(oCard) alarm[0] = 1;	// リロール
		
		instance_destroy();
		oGame.nums_of_supCards--;
	}
	
}
else isSelected = false;

if(oGame.control) image_alpha = 1;
else image_alpha = 0.5;


