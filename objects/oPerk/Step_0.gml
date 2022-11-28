/// @description 

// マウスカーソルが乗っている時
if(point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)) {
	// マウスカーソルが乗った瞬間のみの処理
	if(!isSelected) {
		isSelected = true;
		
	}
	
	// クリック時
	if(mouse_check_button_pressed(mb_left) && oPlayer.coin >= price) {
		alarm[0] = 1;
	}
}

else isSelected = false;

if(oPlayer.coin < price) sprite_index = sCardDark;
else sprite_index = sCard;


