/// @description 

// マウスカーソルが乗っている時
if(oGame.control && point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2)) {
	// マウスカーソルが乗った瞬間のみの処理
	if(!isSelected) {
		isSelected = true;
	}
	
	// クリック時
	if(mouse_check_button_pressed(mb_left)) {
		if(type == SUP_REROLL) with(oCard) alarm[0] = 1;	// リロール
		else if(type == SUP_NUMUP) {
			with(oCard) {
				walk += other.option;	
				alarm[11] = 1;
			}
		}
		else if(type == SUP_NUMDOWN) {
			with(oCard) {
				walk = max(0, walk - other.option);
				alarm[11] = 1;
			}
		}
		else if(type == SUP_HPGAIN) {
			oPlayer.hp = min(oPlayer.maxHp, oPlayer.hp + option);
		}
		else if(type == SUP_COINGAIN) {
			repeat(option) instance_create_layer(x,y,"Mobs",oCoin);
		}
		
		instance_destroy();
		oGame.nums_of_supCards--;
	}
	
}
else isSelected = false;

if(oGame.control) sprite_index = sCard;
else sprite_index = sCardDark;


